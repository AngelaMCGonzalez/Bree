# == Schema Information
#
# Table name: laboratories
#
#  id                 :bigint           not null, primary key
#  analysis_date      :date
#  analysis_type      :string
#  file_name          :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  medical_history_id :bigint           not null
#
# Indexes
#
#  index_laboratories_on_medical_history_id  (medical_history_id)
#
# Foreign Keys
#
#  fk_rails_...  (medical_history_id => medical_histories.id)
#
require "test_helper"

class LaboratoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
