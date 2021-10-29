import { Controller } from 'stimulus';

export default class extends Controller {
  static values = {
    carbohydrates: Number,
    protein: Number,
    lipids: Number,
    energy: Number,
  }

  static targets = [
    'group',
    'energy',
    'carbohydrates',
    'carbohydratesPercentage',
    'protein',
    'proteinPercentage',
    'lipids',
    'lipidsPercentage',
  ]

  receiveGroupPortions(e) {
    const updatedGroups = [];

    this.groupTargets.forEach((el, i) => {
      const carbohydrates = (el.querySelector('#carbohydrates').innerText).replace(' grs', '');
      const protein = (el.querySelector('#protein').innerText).replace(' grs', '');
      const lipids = (el.querySelector('#lipids').innerText).replace(' grs', '');
      const energy = (el.querySelector('#energy').innerText).replace(' kcal', '');

      updatedGroups.push({
        carbohydrates, protein, lipids, energy,
      });
    });

    this.paintIncrementedGroups(updatedGroups);
  }

  paintIncrementedGroups(groups) {
    const values = this.matrixAdd(groups);

    this.energyTarget.innerText = `${values.energy} kcal`;
    this.carbohydratesTarget.innerText = `${values.carbohydrates} grs`;
    this.proteinTarget.innerText = `${values.protein} grs`;
    this.lipidsTarget.innerText = `${values.lipids} grs`;

    this.carbohydratesPercentageTarget.innerText = `${this.calculatePercentage(values.carbohydrates, 4, values.energy)} %`;
    this.proteinPercentageTarget.innerText = `${this.calculatePercentage(values.protein, 4, values.energy)} %`;
    this.lipidsPercentageTarget.innerText = `${this.calculatePercentage(values.lipids, 9, values.energy)} %`;

    this.paintSemaphore(values);
  }

  paintSemaphore(values) {
    // oldClass - newClass
    this.energyTarget.classList.replace('bg-green-100', 'bg-red-100');
    this.energyTarget.classList.replace('text-green-800', 'text-red-800');

    this.carbohydratesTarget.classList.replace('bg-green-100', 'bg-red-100');
    this.carbohydratesTarget.classList.replace('text-green-800', 'text-red-800');

    this.proteinTarget.classList.replace('bg-green-100', 'bg-red-100');
    this.proteinTarget.classList.replace('text-green-800', 'text-red-800');

    this.lipidsTarget.classList.replace('bg-green-100', 'bg-red-100');
    this.lipidsTarget.classList.replace('text-green-800', 'text-red-800');

    const energyRange = this.inRange(this.energyValue, values.energy, 20);
    const carboRange = this.inRange(this.carbohydratesValue, values.carbohydrates, 3);
    const proteinsRange = this.inRange(this.proteinValue, values.protein, 3);
    const lipidsRange = this.inRange(this.lipidsValue, values.lipids, 2);

    this.paintGroup('energy', energyRange);
    this.paintGroup('carbohydrates', carboRange);
    this.paintGroup('proteins', proteinsRange);
    this.paintGroup('lipids', lipidsRange);
  }

  paintGroup(groupName, rangeResult) {
    switch (groupName) {
      case 'energy':
        if (rangeResult === true) {
          this.energyTarget.classList.replace('bg-red-100', 'bg-green-100');
          this.energyTarget.classList.replace('text-red-800', 'text-green-800');
        }
        break;
      case 'carbohydrates':
        if (rangeResult === true) {
          this.carbohydratesTarget.classList.replace('bg-red-100', 'bg-green-100');
          this.carbohydratesTarget.classList.replace('text-red-800', 'text-green-800');
        }
        break;
      case 'proteins':
        if (rangeResult === true) {
          this.proteinTarget.classList.replace('bg-red-100', 'bg-green-100');
          this.proteinTarget.classList.replace('text-red-800', 'text-green-800');
        }
        break;
      case 'lipids':
        if (rangeResult === true) {
          this.lipidsTarget.classList.replace('bg-red-100', 'bg-green-100');
          this.lipidsTarget.classList.replace('text-red-800', 'text-green-800');
        }
        break;
    }
  }

  inRange(original, value, range) {
    if (isNaN(value)) {
      value = 0;
    }

    const incremented = original + range;
    const decremented = original - range;

    if (original > 0 && value > 0 && value >= decremented && value <= incremented) {
      return true;
    }

    return false;
  }

  calculatePercentage(grams, divider, calories) {
    const kCalories = grams * divider;
    const result = (kCalories * 100 / calories).toFixed(2);

    if (isNaN(result)) { return 0; }

    return result;
  }

  matrixAdd(groups) {
    const values = {
      carbohydrates: 0, protein: 0, lipids: 0, energy: 0,
    };

    groups.forEach((el, i) => {
      values.carbohydrates += parseFloat(el.carbohydrates);
      values.protein += parseFloat(el.protein);
      values.lipids += parseFloat(el.lipids);
      values.energy += parseFloat(el.energy);
    });

    return values;
  }
}
