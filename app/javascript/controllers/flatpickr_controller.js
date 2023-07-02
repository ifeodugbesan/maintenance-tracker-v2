import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  // Inform the controller that it has two targets in the form, which are our inputs
  static targets = [ "completedDate", "completedDateMobile" ]

  connect() {
    if (this.hasCompletedDateTarget) {
      flatpickr(this.completedDateTarget, {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d",
      })
    }
    if (this.hasCompletedDateMobileTarget) {
      flatpickr(this.completedDateMobileTarget, {
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d",
      })
    }
  }
}
