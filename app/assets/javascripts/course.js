'use strict'

class Course {
  constructor(name, location, link, id) {
    this.name = name
    this.location = location
    this.link = link
    this.id = id
  }

  courseEl() {
    return `
      <li>
        <a href="${this.link}">${this.name}</a>
        <br>
        Location: ${this.location}
      </li>
    `
  }
}
