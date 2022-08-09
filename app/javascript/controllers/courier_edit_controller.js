import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  close() {
    console.log("yoohoo");
    debugger;
    // this.element.parentElement.innerHTML = "";
  }
}
