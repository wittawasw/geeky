import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("notice: connected");
  }

  close(){
    this.element.remove();
  }

  disconnect() {
    console.log("notice: disconnected");
  }
}
