# frozen_string_literal: true

module Admin
  class PlansController < BaseController
    layout 'plans'
    before_action :set_patient_plan

    def new
      @patient = @plan.patient
    end

    def create; end

    def update
      @plan.update(plan_params)
    end

    private

    def set_patient_plan
      @plan = Plan.find_or_create_by(patient_id: params[:patient_id])
    end

    def plan_params
      params.require(:plan).permit(:calories)
    end
  end
end
