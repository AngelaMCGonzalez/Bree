import { Controller } from 'stimulus';

export default class extends Controller {

  static targets = ['ger', 'result'];

  static values = { 
    gender: String, 
    weight: Number,
    height: Number,
    age: Number,
    physicalActivity: Number
  };

  connect(){
    this.showResults()
  }

  showResults(){
    this.gerTarget.innerHTML = this.result();
    this.resultTarget.innerHTML = this.mifflinResult();
  }

  result = _ => this.isMale ? this.man_calculation : this.woman_calculation
  mifflinResult = _ => {
    const result = this.result() * this.physicalActivityValue
    return parseFloat(result).toFixed(2)
  }

  get isMale(){
    return this.genderValue === 'Masculino' ? true : false;
  }

  get man_calculation(){
    return (9.99 * this.weightValue) + (6.25 * this.heightValue) - (4.92 * this.ageValue) + 5
  }

  get woman_calculation(){
    return (9.99 * this.weightValue) + (6.25 * this.heightValue) - (4.92 * this.ageValue) - 161
  }
}