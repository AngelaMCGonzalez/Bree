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
      params.require(:macronutrient).permit(carbohydrates: [:percentage, :grams], lipids: [:percentage, :grams], protein: [:percentage, :grams])
    end
  end
end