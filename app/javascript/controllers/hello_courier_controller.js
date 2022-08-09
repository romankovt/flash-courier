import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "name" ]

  greet() {
    console.log(`Hello, ${this.name}`);
    console.log("Hello from controller", this.element);
    alert(`Hello, ${this.name}`);
  }

  get name() {
    return this.nameTarget.value;
  };
}
