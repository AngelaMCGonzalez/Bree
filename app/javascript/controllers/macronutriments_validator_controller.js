import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['percentage', 'modal', 'modalPercentage']

  connect() {
    this.hideModal();
  }

  validate(e) {
    let globalPercentage = 0;
    this.percentageTargets.forEach((el, i) => {
      globalPercentage += parseFloat(el.value);
    });
    if (globalPercentage !== 100) {
      this.fail(globalPercentage);
    } else {
      window.dispatchEvent(new CustomEvent('macronutrimentsValidatorContinue'));
    }
  }

  fail(globalPercentage) {
    this.showModal(globalPercentage);
  }

  showModal(percentage) {
    this.modalPercentageTarget.innerHTML = percentage;
    this.modalTarget.style.display = 'block';
  }

  hideModal() {
    this.modalTarget.style.display = 'none';
  }
}
