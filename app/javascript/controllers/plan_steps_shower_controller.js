import { Controller } from 'stimulus'

export default class extends Controller {

  static targets = ['turboFrame']

  updateTurboFrame(e){
    e.preventDefault()

    this.turboFrameTarget.id = e.detail.id
    this.turboFrameTarget.src = e.detail.url
  }
  
}