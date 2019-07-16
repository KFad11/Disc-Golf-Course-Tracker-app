$(function(){
  $(".long_par").on("click", function(event){
    event.preventDefault();
    $.ajax({
      type: "GET",
      url: this.href,
      dataType: "JSON"
    }).done(function(response){
      const longPar = new Basket(response.longest_par)
      console.log(longPar.longest_par)
      $("div#course_").append(longPar.basketEl())
    })
  })

  $("a.load_visits").on("click", function(event){
    event.preventDefault();
    $.ajax({
      type: "GET",
      url: this.href,
      dataType: "JSON"
    }).done(function(response){
      let $ol = $("div.visits ol")
      $ol.html("")
      response.forEach(function(visit){
        const newVisit = new Visit(visit.day_visited)
        $ol.append(newVisit.visitEl())
      })
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
      const newCourse = new Course(response.name, response.location, link)
      const $courseList = $("#disc_golf_courses")
      $courseList.append(newCourse.courseEl())
      // reactive button
      // How?
      // google for jQuery or vanilla JS ways to do it. It's likely one line of code.
    })
  })
})
