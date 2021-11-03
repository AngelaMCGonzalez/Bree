import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = [
    'deleteButtons',
    'elementsContainer',
  ];

  static values = { elements: Array }

  connect() {
    this.displayElements();
  }

  addInputField(ev, newValue = false) {
    const customID = Date.now();
    const tr = document.createElement('tr');
    tr.setAttribute('id', customID);
    tr.innerHTML = `
      <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900">
        <div>
            <label for="ingrediente" class="sr-only">Paso</label>
            <input 
              data-recipe-form-target="stepInputs"
              type="text" 
              name="ingrediente" 
              id="ingrediente" 
              value="${newValue ? ev : ''}"
              class="border pl-3 h-9 focus:ring-indigo-500 focus:border-indigo-500 block w-full sm:text-sm border-gray-300 rounded-md" placeholder="Ingresa paso"
            >
        </div>
      </td>
      <td class="pl-2 pr-0 py-4 whitespace-nowrap text-right text-sm font-medium ">
        <a 
          data-action="click->lists#removeInputField"
          class="text-red-600 hover:text-red-900"
          
        >
            <svg data-custom-index="${customID}" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
            </svg>
        </a>
      </td>
    `;
    this.elementsContainerTarget.appendChild(tr);
  }

  removeInputField(e) {
    const { customIndex } = e.target.dataset;
    const el = document.getElementById(customIndex);

    if (el) {
      el.remove();
    }
  }

  displayElements() {
    if (this.elementsValue.length > 0) {
      this.elementsValue.forEach((element) => setTimeout(() => { this.addInputField(element, true); }, 1000));
    }
  }
}
