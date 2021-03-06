
$(".long_par").on("click", function(event){
  event.preventDefault();
  $.ajax({
    type: "GET",
    url: this.href,
    dataType: "JSON"
  }).done(function(response){
    const longPar = new Basket(response.course_id, response.longest_par)
    const $list = $(`#course_${response.course_id}`)
    $list.html("")
    $list.append(longPar.basketEl())
  })
})

$(".new_course").on("submit", function(event) {
  event.preventDefault();
  $.ajax({
    type: "POST",
    url: this.action,
    data: $(this).serialize(),
    dataType: "JSON"
  }).done(function(response) {
    const link = `${this.url}/${response.id}`
    const newCourse = new Course(response.name, response.location, link, response.id)
    const $courseList = $("#disc_golf_courses")
    $courseList.append(newCourse.courseEl())
    $('#course_submit').removeAttr('disabled');
  })
})

