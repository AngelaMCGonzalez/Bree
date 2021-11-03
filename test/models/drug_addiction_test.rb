# == Schema Information
#
# Table name: drug_addictions
#
#  id                  :bigint           not null, primary key
#  alcohol_consumption :string
#  tobacco_consumption :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require "test_helper"

class DrugAddictionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
