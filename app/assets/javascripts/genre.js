$(function(){
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(genre){
    var html = `<option value="${genre.id}" data-genre="${genre.id}">${genre.name}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChidrenBox(insertHTML){
    var SelectHtml = '';
    SelectHtml = `<div class='select-default__added' id= 'wrapper' >
                    <div class='select-default__box'>
                      <select class="select-default__box--select" id="genre" name="user[genre_id]" required:true>
                        <option value="---" data-genre="---">---</option>
                        ${insertHTML}
                      <select>
                      <i class='fas fa-chevron-down select-default__box--arrow-down'></i>
                    </div>
                  </div>`;
    $('#genre').append(SelectHtml);
  }
  // 親カテゴリー選択後のイベント
  $('#genre-search-result').on('change', function(){
    var genre = document.getElementById('genre').value; //選択された親カテゴリーの名前を取得
    if (genre != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/items/get_genre',
        type: 'GET',
        data: { name: genre },
        dataType: 'json'
      })
      .done(function(){
        $('#wrapper').remove(); //親が変更された時、子以下を削除するする
        var insertHTML = '';
        .forEach(function(){
          insertHTML += appendOption();
        });
        appendChidrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
    }
  });
});