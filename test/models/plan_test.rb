# == Schema Information
#
# Table name: plans
#
#  id         :bigint           not null, primary key
#  calories   :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :bigint           not null
#
# Indexes
#
#  index_plans_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  fk_rails_...  (patient_id => patients.id)
#
require "test_helper"

class PlanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
