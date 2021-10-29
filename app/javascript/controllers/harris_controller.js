import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['ger', 'eta', 'result'];

  static values = {
    gender: String,
    weight: Number,
    height: Number,
    age: Number,
    physicalActivity: Number,
  };

  connect() {
    this.showResults();
  }

  showResults() {
    this.gerTarget.innerHTML = this.result();
    this.etaTarget.innerHTML = this.resultPercentage();
    this.resultTarget.innerHTML = this.harrisResult();
  }

  result = (_) => (this.isMale ? this.man_calculation : this.woman_calculation)

  resultPercentage = (_) => (this.result() / 100 * 10).toFixed(2)

  harrisResult = (_) => {
    const GER = this.result();
    const ETA = (GER / 100 * 10).toFixed(2);
    const HARRIS = (GER * parseFloat(this.physicalActivityValue)) + parseFloat(ETA);

    return parseFloat(HARRIS).toFixed(2);
  }

  get isMale() {
    return this.genderValue === 'Masculino';
  }

  get man_calculation() {
    const calculous = 66.473 + (13.752 * this.weightValue) + (5.003 * this.heightValue) - (6.775 * this.ageValue);
    return calculous.toFixed(2);
  }

  get woman_calculation() {
    const calculous = 665.096 + (9.563 * this.weightValue) + (1.850 * this.heightValue) - (4.676 * this.ageValue);
    return calculous.toFixed(2);
  }
}
