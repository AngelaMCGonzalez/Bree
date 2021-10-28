# frozen_string_literal: true

Rails.application.routes.draw do

  get 'slideover_expedients/general'
  get 'slideover_expedients/habits'
  get 'slideover_expedients/history'
  get 'slideover_expedients/anthropometric'
  get 'slideover_expedients/physical_activity'
  get 'slideover_expedients/notes'

  resources :invitations
  resources :aliments
  resources :aliment_groups

  devise_for :users
  root to: 'home#index'

  namespace :admin do
    root to: 'dashboard#show'

    resources :aliment_finders
    resources :recipes
    resources :duplicate_recipes, only: :edit
    resources :patients do
      namespace :operations do
        resources :harris
        resources :mifflins
      end

      resources :plans
      resources :calories
      resources :macros
      resources :group_portions
      resources :group_portion_times
      resources :patient_recipes
      resources :recipe_times, path: 'recipe_times/:recipe_time'
    end
  end
end
