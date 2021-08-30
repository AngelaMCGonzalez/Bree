import { Controller } from 'stimulus'

export default class extends Controller {
  
  static values = {
    calories: Number,
    percentage: Number,
    divider: Number,
    weight: Number,
    url: String,
    type: String
  }

  static targets = [
    'percentage',
    'grams', 
    'kcal', 
    'extraGrams',
    'extraWeight',
    'extraResult'
  ]

  connect() {
    this.paintValues();
    this.percentageTarget.addEventListener("change", (e) => this.change_percentage(parseFloat(e.target.value)))
    this.gramsTarget.addEventListener("change", (e) => this.change_grams(parseFloat(e.target.value)))
  }

  change_grams(grams) {
    const kCalories = grams * this.divider
    const percentage = kCalories * 100 / this.calories
    
    this.change_percentage(percentage)
  }

  change_percentage(percentage) {
    if (percentage <= 100) {
      this.updatePercentageValues(percentage)    
    } else {
      this.updatePercentageValues(100)
      alert('Debes ingresar un numero menor/igual a 100')
    }
  }

  updatePercentageValues(percentage){
    this.percentageValue = percentage;
    this.paintValues();
    this.updateMacros(percentage)
  }
  
  async updateMacros(value){
    let macronutrientValue = {}
    macronutrientValue[`${this.typeValue}`] = {
      percentage: value,
      grams: this.calculateGrams().toFixed(2)
    };

    await fetch(this.urlValue, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': this.authenticityToken(),
      },
      body: JSON.stringify({
        macronutrient: macronutrientValue 
      })
    });
  }

  paintValues() {
    this.paintPercentage();
    this.paintKcal();
    this.paintGrams();
    this.paintExtraInformation();
  }

  paintExtraInformation() {
    this.extraGramsTarget.innerHTML = this.calculateGrams().toFixed(2);
    this.extraWeightTarget.innerHTML = this.weight
    this.extraResultTarget.innerHTML = (this.calculateGrams() / this.weight).toFixed(2)
  }

  paintPercentage = _ => this.percentageTarget.value = this.percentage;
  paintGrams = _ => this.gramsTarget.value = this.calculateGrams();
  paintKcal = _ => this.kcalTarget.innerHTML = this.calculateCalories();


  calculateGrams = _ => parseFloat(this.calculateCalories() / this.divider)
  calculateCalories = _ => parseFloat((this.calories / 100) * this.percentage)
  
  authenticityToken = () => document.querySelector("meta[name='csrf-token']").getAttribute('content');

  get percentage(){
    return this.percentageValue
  }

  get calories(){
    return this.caloriesValue
  }

  get divider(){
    return this.dividerValue
  }

  get weight(){
    return this.weightValue
  }
  
}