# == Schema Information
#
# Table name: patients
#
#  id                       :bigint           not null, primary key
#  age                      :integer
#  avatar                   :string
#  email                    :string
#  gender                   :string
#  height                   :float
#  name                     :string
#  physical_activity_factor :float
#  weight                   :float
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  user_id                  :bigint           not null
#
# Indexes
#
#  index_patients_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
