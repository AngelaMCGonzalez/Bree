import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['recipe']

  connect(){
    localStorage.setItem('recipeId', 'undefined');
  }

  select(e) {
    this.defineOrGetRecipe(e.currentTarget);
  }

  defineOrGetRecipe(recipe) {
    if (localStorage.getItem('recipeId') === null || localStorage.getItem('recipeId') === 'undefined') {
      this.storeRecipe(recipe.id);
      this.paintSelected();
    } else {
      this.unpaintSelected();
      this.storeRecipe(recipe.id);
      this.paintSelected();
    }
  }

  storeRecipe(recipe) {
    localStorage.setItem('recipeId', `${recipe}`);
  }

  paintSelected() {
    this.recipeTarget.classList.add('ring-2')
    this.recipeTarget.classList.add('ring-offset-2')
    this.recipeTarget.classList.add('ring-indigo-500')
    this.recipeTarget.classList.add('ring-offset-gray-100')
  }

  unpaintSelected() {
    const recipeId = localStorage.getItem('recipeId');
    const recipe = document.getElementById(`${recipeId}-target`);
    
    recipe.classList.remove('ring-2')
    recipe.classList.remove('ring-offset-2')
    recipe.classList.remove('ring-indigo-500')
    recipe.classList.remove('ring-offset-gray-100')    
  }
}
