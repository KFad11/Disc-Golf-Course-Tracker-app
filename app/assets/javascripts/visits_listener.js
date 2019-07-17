$("a.load_visits").on("click", function(event){
  event.preventDefault();
  $.ajax({
    type: "GET",
    url: this.href,
    dataType: "JSON"
  }).done(function(response){
    let $ol = $("div.visits ol")
    $ol.html("")
    response.visits.forEach(function(visit){
      const newVisit = new Visit(visit.day_visited)
      $ol.append(newVisit.visitEl())
    })
  })
})
