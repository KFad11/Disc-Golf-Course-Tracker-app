'use strict'

class Basket {
  constructor(basket_number, par) {
    this.basket_number = basket_number
    this.par = par
  }

  basketEl() {
    return `
      <li>
        Basket: ${this.basket_number}</br>
        Par: ${this.par}
      </li>
      <br>
    `
  }
}
