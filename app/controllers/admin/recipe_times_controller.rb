# frozen_string_literal: true

module Admin
  class RecipeTimesController < BaseController
    def edit
      @recipes = Recipe.where(food_time_priority: I18n.t(params[:recipe_time])).limit(20)
      @patient = Patient.find(params[:patient_id])
      @time = params[:recipe_time]
    end
  end
end
