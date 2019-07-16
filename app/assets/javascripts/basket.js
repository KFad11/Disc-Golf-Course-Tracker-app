'use strict'

class Basket {
  constructor(course_id, longest_par) {
    this.course_id = course_id
    this.longest_par = longest_par
  }

  basketEl() {
    return `
        Par: ${this.longest_par}
      <br>
    `
  }
}
