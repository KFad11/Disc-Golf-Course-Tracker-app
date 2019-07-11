$(function(){
  $(".new_course").on("submit", function(e) {
    e.preventDefault();
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response) {
      console.log(response)
      const newCourse = new Course(response.name, response.location)
      const $courseList = $("div.courses ol")
      $courseList.append(newCourse.courseEl())
    })
  })
})

