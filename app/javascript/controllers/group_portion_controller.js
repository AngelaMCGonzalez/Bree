import { Controller } from 'stimulus';

export default class extends Controller {
  static values = {
    url: String,
    carbohydrates: Number,
    protein: Number,
    lipids: Number,
    energy: Number,
    carbohydratesSaved: Number,
    proteinSaved: Number,
    lipidsSaved: Number,
    energySaved: Number,
    key: String,
  }

  static targets = [
    'carbohydrates',
    'protein',
    'lipids',
    'energy',
    'quantity',
  ]

  connect() {
    this.setGroupValues({
      carbohydrates: this.carbohydratesSavedValue,
      protein: this.proteinSavedValue,
      lipids: this.lipidsSavedValue,
      energy: this.energySavedValue,
    });
    this.quantityTarget.addEventListener('change', (e) => this.multiply_groups(parseFloat(e.target.value)));
  }

  setGroupValues(values = {
    carbohydrates: 0, protein: 0, lipids: 0, energy: 0,
  }) {
    this.carbohydratesTarget.innerHTML = `${values.carbohydrates} grs`;
    this.proteinTarget.innerHTML = `${values.protein} grs`;
    this.lipidsTarget.innerHTML = `${values.lipids} grs`;
    this.energyTarget.innerHTML = `${values.energy} kcal`;

    this.launchGroupValuesEvent();
  }

  multiply_groups(multiple, locale = false) {
    if (isNaN(multiple)) {
      multiple = 0;
    }

    const groupValues = {
      key: this.keyValue,
      carbohydrates: parseFloat(this.carbohydratesValue) * multiple,
      protein: parseFloat(this.proteinValue) * multiple,
      lipids: parseFloat(this.lipidsValue) * multiple,
      energy: parseFloat(this.energyValue) * multiple,
    };

    const groupTimeValues = { };

    this.setGroupValues(groupValues);

    delete groupValues.key;
    groupValues.carbohydratesValue = groupValues.carbohydrates;
    groupValues.proteinValue = groupValues.protein;
    groupValues.lipidsValue = groupValues.lipids;
    groupValues.energyValue = groupValues.energy;
    groupValues.carbohydrates = this.carbohydratesValue;
    groupValues.protein = this.proteinValue;
    groupValues.lipids = this.lipidsValue;
    groupValues.energy = this.energyValue;
    groupValues.quantity = multiple;
    groupTimeValues.quantity = multiple;

    if (!locale) {
      this.updateGroupPortion(groupValues, groupTimeValues);
    }
  }

  updateGroupPortion(groupValues, groupTimeValues) {
    const groupPortion = { };
    const groupPortionTime = { };
    groupPortion[`${this.keyValue}`] = groupValues;
    groupPortionTime[`${this.keyValue}`] = groupTimeValues;

    fetch(this.urlValue, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': this.authenticityToken(),
      },
      body: JSON.stringify({
        group_portion: groupPortion,
        group_portion_time: groupPortionTime,
      }),
    });
  }

  launchGroupValuesEvent() {
    window.dispatchEvent(new CustomEvent('groupPortions'));
  }

  authenticityToken = () => document.querySelector("meta[name='csrf-token']").getAttribute('content');
}
