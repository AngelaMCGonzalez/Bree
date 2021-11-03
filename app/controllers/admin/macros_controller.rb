# frozen_string_literal: true

module Admin
  class MacrosController < BaseController
    def edit
      @patient = Patient.find(params[:patient_id])
      @macronutriment = Macronutrient.find(params[:id])
    end

    def update
      @macronutriment = Macronutrient.find(params[:id])
      @macronutriment.update!(macro_params)
    end

    private

    def macro_params
      params.require(:macronutrient).permit(carbohydrates: %i[percentage grams], lipids: %i[percentage grams],
                                            protein: %i[percentage grams])
    end
  end
end
