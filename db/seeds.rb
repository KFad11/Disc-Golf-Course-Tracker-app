# frozen_string_literal: true

Course.destroy_all

courses = [
  {name:"Tyler State Park", location: "Newtown, PA"},
  {name:"Sedgley Woods", location: "Fairmount Park"},
  {name:"Stafford Woods", location: "Voorhess, NJ"},
  {name:"Iron Hill", location: "Newark, DE"}
]

courses.each {|course| Course.create(course)}
