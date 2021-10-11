# == Schema Information
#
# Table name: invitations
#
#  id                     :bigint           not null, primary key
#  city                   :string
#  email                  :string
#  name                   :string
#  nutrition_professional :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require "test_helper"

class InvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
