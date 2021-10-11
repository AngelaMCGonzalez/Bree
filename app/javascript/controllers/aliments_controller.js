import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = [ 'results' ]

  static values = { url: String }
  
  setGroup(e){
    const group = e.currentTarget.value;
    
    const headers = { 'X-Requested-With': 'XMLHttpRequest' };
    const url = new URL('/aliment_groups', window.location.href);
    
    const params = new URLSearchParams(url.search.slice(1));
    params.append('group', group);
    url.search = params.toString();

    fetch(url.toString(), { headers })
    .then((response) => response.text())
    .then((html) => {
      this.resultsTarget.innerHTML = html;
    });
  }
}