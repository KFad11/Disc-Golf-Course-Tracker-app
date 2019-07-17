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
        <br>
        <span id="par_button">
          <a class="long_par" href="/courses/${this.id}/longest_par"><button type="button">Longest Par on the course</button></a>
        </span>
      </li>
    `
  }
}
