window.addEventListener('DOMContentLoaded', function(){
  //DataTransferオブジェクトで、データを格納する箱を作る
  var dataBox = new DataTransfer();
  //querySelectorでfile_fieldを取得
  var file_field = document.querySelector('input[type=file]')
  //fileが選択された時に発火するイベント
  $('#img-file').change(function(){
    //選択したfileのオブジェクトをpropで取得
    var files = $('input[type="file"]').prop('files')[0];
    $.each(this.files, function(i, file){
      //FileReaderのreadAsDataURLで指定したFileオブジェクトを読み込む
      var fileReader = new FileReader();{
        $('user__data--box--btn').prop('disabled', false);
      }
      
      //DataTransferオブジェクトに対して、fileを追加
      dataBox.items.add(file)
      //DataTransferオブジェクトに入ったfile一覧をfile_fieldの中に代入
      file_field.files = dataBox.files
      
      var num = $('.image').length + 1 + i
      fileReader.readAsDataURL(file);
      //画像が1枚になったらドロップボックスを削除する
      if (num == 1){
        $('#image-box__container').css('display', 'none')   
      }
      //読み込みが完了すると、srcにfileのURLを格納
      fileReader.onloadend = function() {
        var src = fileReader.result
        var html= `<div class='image' data-image="${file.image}">
                    <div class=' image__content'>
                      <div class='image__content--icon'>
                        <img src=${src} width="114" height="80" >
                      </div>
                    </div>
                    <div class='image__operetion'>
                      <div class='image__operetion--delete'>削除</div>
                    </div>
                  </div>`

        $('#image-box__container').before(html);
      };
      //image-box__containerのクラスを変更し、CSSでドロップボックスの大きさを変えてやる。
      $('#image-box__container').attr('class', `user-num-${num}`)
      console.log('ok')
    });
  });
  //削除ボタンをクリックすると発火するイベント
  $(document).on("click", '.image__operetion--delete', function(){
    //プレビュー要素を取得
    var target_image = $(this).parent().parent()
    //プレビューを削除
    target_image.remove();
    //inputタグに入ったファイルを削除
    file_field.value
  })
});