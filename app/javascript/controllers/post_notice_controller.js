import { Controller } from "@hotwired/stimulus"
import Toastify from 'toastify-js'
import { consolelog } from '../utilities/consolelog'

export default class extends Controller {
  connect() {
    console.log("connected");
    consolelog();
    Toastify({
      text: "This is a toast",
      duration: 3000
      }).showToast();
  }

  close() {
    this.element.remove();
  }

  disconnect(){
    console.log("disconnected");
  }
}
