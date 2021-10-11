module Admin
  class GroupPortionsController < BaseController
    def edit
      @patient = Patient.find(params[:patient_id])
      @group_portion = GroupPortion.find(params[:id])
    end

    def update
      @group_portion = GroupPortion.find(params[:id])
      @group_portion.update!(group_portion_params)

      GenerateGroupPortions.call(
        group_portion: @group_portion,
        group_portion_time_params: group_portion_time_params
      )
    end

    private

    def group_portion_params
      params.require(:group_portion).permit!
    end

    def group_portion_time_params
      params.require(:group_portion_time).permit!
    end
  end
end