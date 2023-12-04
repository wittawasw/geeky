import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.getElementById('post-form').reset();
    console.log("post-notice connected");
  }

  close() {
    console.log("post-notice close");
    this.element.innerHTML = '';
  }
}
