$(function(){
  $("a.load_visits").on("click", function(event){
    event.preventDefault();
    $.get(this.href).done(function(json){
      console.log(json)
      let $ol = $("div.visits ol")
      $ol.html("")
      json.forEach(function(visit){
        const newVisit = new Visit(visit.day_visited)
        $ol.append(newVisit.visitEl())
      })
    })
  })
})

$(function(){
  $(".new_course").on("submit", function(event) {
    event.preventDefault();
    $.ajax({
      type: "POST",
      url: this.action,
      data: $(this).serialize(),
      dataType: "JSON"
    }).done(function(response) {
      const link = `${this.url}/${response.id}`
      const newCourse = new Course(response.name, response.location, link)
      const $courseList = $("div.courses ol")
      $courseList.append(newCourse.courseEl())
      // reactive button
      // How?
      // google for jQuery or vanilla JS ways to do it. It's likely one line of code.
    })
  })
})
