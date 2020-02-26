window.addEventListener('DOMContentLoaded', function(){
  console.log('ok')
  $(document).on('turbolinks:load', function() {
    $('#calendar').fullCalendar({});
  });

  $(document).on('turbolinks:before-cache', function() {
    $('#calendar').empty();
  });

}) 
.call(this);