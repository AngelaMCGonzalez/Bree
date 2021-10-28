# frozen_string_literal: true

module Admin
  class PatientRecipesController < BaseController
    def edit
      @recipes = Recipe.limit(30)
      @patient = Patient.find(params[:patient_id])
    end
  end
end
