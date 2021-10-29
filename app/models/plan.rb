# frozen_string_literal: true

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
  has_one :macronutrient, dependent: :destroy
  has_one :group_portion, dependent: :destroy
  has_one :group_portion_time, dependent: :destroy

  after_create :create_associations

  def create_associations
    create_macronutrient
    create_group_portion
    create_group_portion_time
  end
end
