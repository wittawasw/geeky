import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("post-form connected");
  }

  reset() {
    this.element.reset();
  }
}
