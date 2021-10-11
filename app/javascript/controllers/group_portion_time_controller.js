import { Controller } from 'stimulus';

export default class extends Controller {

  static values = {
    url: String,
    key: String,
    quantity: Number,
  }

  static targets = [
    'breakfast',
    'firstCollation',
    'meal',
    'secondCollation',
    'dinner',
    'quantity'
  ]

  connect(){
    this.breakfastTarget.addEventListener("change", (e) => this.changePortion())
    this.firstCollationTarget.addEventListener("change", (e) => this.changePortion())
    this.mealTarget.addEventListener("change", (e) => this.changePortion())
    this.secondCollationTarget.addEventListener("change", (e) => this.changePortion())
    this.dinnerTarget.addEventListener("change", (e) => this.changePortion())
    this.validateQuantities()
  }

  validateQuantities(){
    let breakfast = this.generateFloatingNumber(this.breakfastTarget.value)
    let firstCollation = this.generateFloatingNumber(this.firstCollationTarget.value)
    let meal = this.generateFloatingNumber(this.mealTarget.value)
    let secondCollation = this.generateFloatingNumber(this.secondCollationTarget.value)
    let dinner = this.generateFloatingNumber(this.dinnerTarget.value)

    const quantities = breakfast + firstCollation + meal + secondCollation + dinner
    this.quantityTarget.innerHTML = `${quantities} de ${this.quantityValue}`

    if(this.quantityValue === quantities){
      this.quantityTarget.classList.replace('bg-red-100', 'bg-green-100')
      this.quantityTarget.classList.replace('text-red-800', 'text-green-800')
    } else {
      this.quantityTarget.classList.replace('bg-green-100', 'bg-red-100')
      this.quantityTarget.classList.replace('text-green-800', 'text-red-800')
    }
  }

  changePortion(){
    const groupPortionTime = { }
    groupPortionTime[`${this.keyValue}`] = {
      quantity: this.quantityValue,
      breakfast: this.generateFloatingNumber(this.breakfastTarget.value),
      firstCollation: this.generateFloatingNumber(this.firstCollationTarget.value),
      meal: this.generateFloatingNumber(this.mealTarget.value),
      secondCollation: this.generateFloatingNumber(this.secondCollationTarget.value),
      dinner: this.generateFloatingNumber(this.dinnerTarget.value)
    }

    this.validateQuantities()
    this.updateGroupPortionTime(groupPortionTime)
  }

  generateFloatingNumber(el){
    if(el === ""){
      return 0
    }

    return parseFloat(el)
  }

  updateGroupPortionTime(groupPortionTime){
    fetch(this.urlValue, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': this.authenticityToken(),
      },
      body: JSON.stringify({
        group_portion_time: groupPortionTime
      })
    });
  }

  authenticityToken = () => document.querySelector("meta[name='csrf-token']").getAttribute('content');
}