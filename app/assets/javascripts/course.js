'use strict'

class Course {
  constructor(name, location) {
    this.name = name
    this.location = location
  }

  courseEl() {
    return `
      <ol>
        <li>
          <p>${this.name}</p>
          <p>${this.location}</p>
        </li>
      </ol>
    `
  }
}
