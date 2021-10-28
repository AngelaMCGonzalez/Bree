# == Schema Information
#
# Table name: medical_histories
#
#  id                         :bigint           not null, primary key
#  diseases                   :string           default([]), is an Array
#  gastrointestinal_disorders :string           default([]), is an Array
#  medicines                  :text
#  surgeries                  :boolean
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  patient_id                 :bigint           not null
#
# Indexes
#
#  index_medical_histories_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  fk_rails_...  (patient_id => patients.id)
#
require "test_helper"

class MedicalHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
