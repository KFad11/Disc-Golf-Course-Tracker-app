'use strict'

class Visit {
  constructor(day_visited) {
    this.day_visited = day_visited
  }

  visitEl() {
    return `
      <li>
        Day Visited: ${this.day_visited}
      </li>
      <br>
    `
  }
}
