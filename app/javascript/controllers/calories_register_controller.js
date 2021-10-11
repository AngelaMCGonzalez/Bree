import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = [ 'input' ]

  static values = { calories: Number }

  connect() {
    this.inputTarget.value = this.caloriesValue
    setTimeout(() => {  this.launchEvent(`${this.caloriesValue}`) }, 200)
  }

  writeCalories(){
    this.launchEvent(this.inputTarget.value)
  }

  launchEvent(calories){
    window.dispatchEvent(new CustomEvent('selectedCalories', {
      detail: calories
    }));
  }
}