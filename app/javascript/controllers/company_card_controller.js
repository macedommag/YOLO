import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["form", "input", "cards"]
  

  update(event) {
    const url = `${this.formTarget.action}?query=${this.inputTarget.value}`
    fetch(url, { headers: { "Accept": "text/plain" } })
    .then(response => response.text())
    .then((data) => {
        this.cardsTarget.innerHTML = data
      })
  }
}