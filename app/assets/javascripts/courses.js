$(function(){
  $(".new_course").on("submit", (event) => {
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response) {
      console.log(response)
     var $ol = $("div.courses ol")
      $ol.append(response)
    })
  })
})
