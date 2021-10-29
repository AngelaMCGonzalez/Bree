import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['option'];

  selectTab(e) {
    this.optionTargets.forEach((el, i) => {
      el.classList.replace('bg-indigo-50', 'text-gray-500');
      el.classList.replace('text-indigo-700', 'hover:text-gray-700');

      if (el === e.currentTarget) {
        el.classList.replace('text-gray-500', 'bg-indigo-50');
        el.classList.replace('hover:text-gray-700', 'text-indigo-700');
      }
    });
  }
}
