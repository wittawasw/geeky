import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("notice: connected");
    let form = document.getElementById('post-form')

    if(form != undefined) {
      document.getElementById('post-form').reset();
    }
  }

  close(){
    this.element.innerHTML = "";
  }

  disconnect() {
    console.log("notice: disconnected");
  }
}
