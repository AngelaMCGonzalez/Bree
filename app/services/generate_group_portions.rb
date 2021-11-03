# frozen_string_literal: true

class GenerateGroupPortions
  include Interactor

  delegate :group_portion, :group_portion_time_params, to: :context

  def call
    plan = group_portion.plan
    group_portion_time = plan.group_portion_time
    group_portion_time[group_portion_time_params.keys.first.to_sym][:quantity] =
      group_portion_time_params[group_portion_time_params.keys.first.to_sym][:quantity]
    group_portion_time.save!
  end
end
