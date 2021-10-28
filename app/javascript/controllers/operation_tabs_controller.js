import { Controller } from 'stimulus';

export default class extends Controller {
  static values = {
    url: String,
    id: String,
  }

  changeTab(e) {
    e.preventDefault();

    window.dispatchEvent(new CustomEvent('refreshOperationTurboFrame', {
      detail: {
        url: this.urlValue,
        id: this.idValue,
      },
    }));
  }
}
