'use strict'

class Basket {
  constructor(course_id, longest_par) {
    this.course_id = course_id
    this.longest_par = longest_par
  }

  basketEl() {
    if (this.longest_par) {
      return `
          Par: ${this.longest_par}
        <br>
      `
    } else {
      return(`
        No Baskets exist for the course yet.
      `)
    }
  }
}
