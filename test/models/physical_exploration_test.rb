# == Schema Information
#
# Table name: physical_explorations
#
#  id                :bigint           not null, primary key
#  blood_pressure    :float
#  eyes_description  :text
#  hair_description  :text
#  mouth_description :text
#  nails_description :text
#  skin_description  :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class PhysicalExplorationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
