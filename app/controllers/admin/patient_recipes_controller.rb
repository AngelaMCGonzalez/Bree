module Admin
  class PatientRecipesController < BaseController
    def edit
      @patient = Patient.find(params[:patient_id])
    end
  end
end