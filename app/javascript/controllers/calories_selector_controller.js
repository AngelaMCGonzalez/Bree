import { lavenderblush } from 'color-name';
import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = [ 'option' ];

  static values = {
    calories: Number
  };

  initialize() {
    this.setCurrentCalories();
  }
  
  setCurrentCalories(){
    console.log('setting...')
    this.optionTargets.forEach((el, i) => {
      let caloriesLabel = el.querySelector('#calories-label');
      let element = el.querySelector('#server-size-0-label').innerHTML;
    
      if(this.caloriesValue === parseInt(element.replace(',',''))){

        caloriesLabel.classList.replace('border-transparent', 'border-indigo-500')
        // self.launchEvent(element, 'currentCalories');
        window.dispatchEvent(new CustomEvent('currentCalories', {
          detail: this.caloriesValue
        }));
      }
    });
  }

  setCalories(e){
    e.preventDefault();

    this.optionTargets.forEach((el, i) => {
      let caloriesLabel = el.querySelector('#calories-label');
      caloriesLabel.classList.replace('border-indigo-500', 'border-transparent')
      
      if(el === e.currentTarget){
        caloriesLabel.classList.replace('border-transparent', 'border-indigo-500')
        let element = e.currentTarget.querySelector('#server-size-0-label')
        if (element) this.launchEvent(element.innerHTML);        
      }
    })
  }

  launchEvent(value, eventName = 'selectedCalories'){
    window.dispatchEvent(new CustomEvent(eventName, {
      detail: value
    }));
  }
}