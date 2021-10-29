import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = [
    'image', 'name', 'ingredients', 'accompaniment', 'preparation',
    'preparationTime', 'cookingTime',
  ]

  updateResume(e) {
    this.nameTarget.innerHTML = e.detail.name;
    this.imageTarget.src = e.detail.image;
    this.preparationTimeTarget.innerHTML = `
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      Prep ${e.detail.preparationTime} min
    `;
    this.cookingTimeTarget.innerHTML = `
      <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 mr-1 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      Cocción ${e.detail.cookingTime} min
    `;
    this.ingredientsTarget.innerHTML = this.showIngredients(e.detail.ingredients);
    this.accompanimentTarget.innerHTML = this.showAccompaniment(e.detail.accompaniment);
    this.preparationTarget.innerHTML = this.showSteps(e.detail.preparation);
  }

  showIngredients(ingredients) {
    let html = '';
    for (const ingredient of ingredients) {
      html += `<div class="py-3 flex text-sm font-medium grid grid-cols-3 gap-4">
      <dt class="text-gray-500 flex-shrink-0 col-span-1">

        <span>${ingredient.unit}</span>
      </dt>
      <dd class="text-gray-900 col-span-2 ml-3">
        ${ingredient.value}
        <span class="block text-gray-400 font-regular text-xs">${ingredient.group}</span>
      </dd>
    </div>`;
    }

    return html;
  }

  showAccompaniment(accompaniments) {
    let html = '';
    for (const accompaniment of accompaniments) {
      html += `
      <div class="py-3 flex text-sm font-medium grid grid-cols-3 gap-4">
        <dt class="text-gray-500 flex-shrink-0 col-span-1">
        1
        <span>${accompaniment.unit}</span>
        </dt>
        <dd class="text-gray-900 col-span-2 ml-3">
        ${accompaniment.value}
          <span class="block text-gray-400 font-regular text-xs">${accompaniment.group}</span>
        </dd>
      </div>`;
    }

    return html;
  }

  showSteps(steps) {
    let html = '';
    for (let i = 0; i < steps.length; i++) {
      html += `<div class="py-3 flex justify-start text-sm font-medium">
      <dt class="text-gray-500">
        ${i + 1}.
      </dt>
      <dd class="text-gray-500 ml-4">
        ${steps[i]}
      </dd>
    </div>`;
    }

    return html;
  }
}
