# == Schema Information
#
# Table name: group_portion_times
#
#  id          :bigint           not null, primary key
#  ale         :jsonb            not null
#  aoa_aag     :jsonb            not null
#  aoa_bag     :jsonb            not null
#  aoa_mag     :jsonb            not null
#  aoa_mbag    :jsonb            not null
#  cereals_c_g :jsonb            not null
#  cereals_s_g :jsonb            not null
#  fats_c_p    :jsonb            not null
#  fats_s_p    :jsonb            not null
#  fruit       :jsonb            not null
#  legumes     :jsonb            not null
#  milk_c_a    :jsonb            not null
#  semi_milk   :jsonb            not null
#  skim_milk   :jsonb            not null
#  sugars_c_g  :jsonb            not null
#  sugars_s_g  :jsonb            not null
#  vegetables  :jsonb            not null
#  whole_milk  :jsonb            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  plan_id     :bigint           not null
#
# Indexes
#
#  index_group_portion_times_on_plan_id  (plan_id)
#
# Foreign Keys
#
#  fk_rails_...  (plan_id => plans.id)
#
require "test_helper"

class GroupPortionTimeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
