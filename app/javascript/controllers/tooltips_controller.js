import { Controller } from "@hotwired/stimulus"
import * as bootstrap from "bootstrap"


// Connects to data-controller="tooltips"
export default class extends Controller {
  connect() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    console.log(tooltipTriggerList)
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  }
}
