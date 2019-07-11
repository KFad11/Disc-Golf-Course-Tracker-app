'use strict'

class Course {
  constructor(name, location) {
    this.name = name
    this.location = location
  }

  courseEl() {
    return `
      <li>
        <p>${this.course}</p>
      </li>
    `
  }
}
