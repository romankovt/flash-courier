import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "source" ]

  copy() {
    navigator.clipboard.writeText(this.sourceTarget.value);
    console.log(`'${this.sourceTarget.value}' has been copied to the clipboard`);
  }
}
