import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "city", "date", "description", "temperature", "icon"]

  initialize() {
    this.apiKey = "API-KEY"
  }

}
