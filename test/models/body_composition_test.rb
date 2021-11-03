# == Schema Information
#
# Table name: body_compositions
#
#  id             :bigint           not null, primary key
#  bioimpedance   :string
#  body_water     :float
#  fat_percentage :float
#  kilograms_fat  :float
#  muscle_mass    :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class BodyCompositionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
