'use strict'

class Course {
  constructor(name, location, link) {
    this.name = name
    this.location = location
    this.link = link
  }

  courseEl() {
    return `
      <li>
        <a href="${this.link}">${this.name}</a>
        <br>
        Location: ${this.location}
      </li>
      <br>
    `
  }
}
