$(function(){
  $(".course_form").on("submit", function(e){
    console.log(e)
    e.preventDefault();
    $.ajax({
      type: ($("input[name='_method']").val() || this.method),
      url: this.action,
      data: $(this).serialize(), // either JSON or querystring serializing
      success: function(response){
        console.log(response)
        var $ol = $("div.courses ol")
        $ol.append(response);
      }
    });
  })
})
