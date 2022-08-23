import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image"]

  expand(event) {
    this.imageTarget.src = event.currentTarget.src
  }
}
