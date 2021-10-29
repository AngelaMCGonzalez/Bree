import { Controller } from 'stimulus';

export default class extends Controller {
  static values = {
    image: String,
    name: String,
    ingredients: String,
    accompaniment: String,
    preparation: String,
    preparationTime: Number,
    cookingTime: Number,
  }

  showResume() {
    window.dispatchEvent(new CustomEvent('recipeResume', {
      detail: {
        image: this.imageValue,
        name: this.nameValue,
        ingredients: eval(`[${this.ingredientsValue}]`),
        accompaniment: eval(`[${this.accompanimentValue}]`),
        preparation: eval(this.preparationValue),
        preparationTime: this.preparationTimeValue,
        cookingTime: this.cookingTimeValue,
      },
    }));
  }
}
