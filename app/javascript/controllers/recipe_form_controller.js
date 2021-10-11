import { Controller } from 'stimulus'

export default class extends Controller {
  
  static targets = [ 
    'form', 
    'stepInputs', 
    'steps',
    'condiments',
    'condimentInputs',
  ]

  send(e){

    e.preventDefault();
    this.stepsTarget.value = `{${[...this.buildArray(this.stepInputsTargets)]}}`;
    this.condimentsTarget.value = `{${[...this.buildArray(this.condimentInputsTargets)]}}`
    
    this.formTarget.submit();
  }

  buildArray(collection){
    let elements = new Array();

    collection.forEach((el) => {
      elements.push(`"${el.value}"`);
    })

    return [...elements]
  }

  arrayToList(array){
    return array
      .join(", ")
      .replace(/, ((?:.(?!, ))+)$/, ' and $1');
  }
}