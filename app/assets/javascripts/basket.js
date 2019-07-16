'use strict'

class Basket {
  constructor(longest_par) {
    this.longest_par = longest_par
  }

  basketEl() {
    return `
        Par: ${this.longest_par}
      <br>
    `
  }
}
