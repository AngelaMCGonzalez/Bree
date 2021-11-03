# frozen_string_literal: true

module Admin
  class GroupPortionTimesController < BaseController
    def edit
      @patient = Patient.find(params[:patient_id])
      @group_portion_times = GroupPortionTime.find(params[:id])
    end

    def update
      @group_portion_time = GroupPortionTime.find(params[:id])
      @group_portion_time.update!(group_portion_time_params)
    end

    private

    def group_portion_time_params
      params.require(:group_portion_time).permit!
    end
  end
end
