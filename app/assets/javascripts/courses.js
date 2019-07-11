$(function(){
  $(".new_course").on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response) {
      const link = this.url + "/" + response.id
      const newCourse = new Course(response.name, response.location, link)
      const $courseList = $("div.courses ol")
      $courseList.append(newCourse.courseEl())
      window.location.reload();
    })
  })
})

