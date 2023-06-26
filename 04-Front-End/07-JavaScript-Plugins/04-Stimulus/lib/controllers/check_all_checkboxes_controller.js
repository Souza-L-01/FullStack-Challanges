// lib/controllers/check_all_checkboxes_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["checkbox"]

  checkAll(event) {
    const isChecked = event.target.checked;
    this.checkboxTargets.forEach((checkbox) => {
      checkbox.checked = isChecked;
    });
  }
}
