# == Schema Information
#
# Table name: obstetrical_gynecological_informations
#
#  id                :bigint           not null, primary key
#  contraceptives    :string
#  lactation         :boolean
#  last_menstruation :date
#  pregnancy         :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class ObstetricalGynecologicalInformationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
