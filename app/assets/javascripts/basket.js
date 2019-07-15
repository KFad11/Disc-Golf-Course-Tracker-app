'use strict'

class Basket {
  constructor(par) {
    this.par = par
  }

  basketEl() {
    return `
        Par: ${this.par}
      <br>
    `
  }
}
