import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['modal']

  connect() {
    this.hide();
  }

  show() {
    this.modalTarget.style.display = 'block';
  }

  hide() {
    this.modalTarget.style.display = 'none';
  }
}
