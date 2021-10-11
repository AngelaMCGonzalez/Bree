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
class Plan < ApplicationRecord
  belongs_to :patient
  has_one :macronutrient
  has_one :group_portion
  has_one :group_portion_time

  after_create :create_associations

  def create_associations
    self.create_macronutrient
    self.create_group_portion
    self.create_group_portion_time
  end
end
