import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['tab'];

  static classes = [ 
    "selected", 
    "spanSelected",
    "notSelected" ,
    "spanNotSelected" 
  ]

  select(e){
    this.tabTargets.forEach((el, i) => {
      const span = el.firstElementChild;
      
      el.classList.remove(...this.selectedClasses);
      span.classList.remove(...this.spanSelectedClasses);
      span.classList.add(...this.spanNotSelectedClasses);
      
      if (el === e.currentTarget) {
        el.classList.remove(...this.notSelectedClasses)
        el.classList.add(...this.selectedClasses);

        span.classList.remove(...this.spanNotSelectedClasses);
        span.classList.add(...this.spanSelectedClasses);
      }
    });
  }
}