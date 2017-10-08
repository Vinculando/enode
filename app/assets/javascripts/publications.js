$(document).on('turbolinks:load',function(){
  $("button[name='enviar']").on('click', function(event){
    event.preventDefault();
    var at = $("input[name='authenticity_token']").val();
    var id = $("input[name='publicationId']").val();
    var user = $("input[name='userId']").val();
    var content = $("textarea[name='content']").val();
    $.ajax({
      url: '/publications/'+id+'/postulations',
      type: 'POST',
      dataType: 'script',
      data: {
        authenticity_token: at,
        postulation: {
          user_id: user,
          publication_id: id,
          contenido: content
        }
      }
    })
  })
});
