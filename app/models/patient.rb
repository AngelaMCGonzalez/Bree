# frozen_string_literal: true

# == Schema Information
#
# Table name: patients
#
#  id                       :bigint           not null, primary key
#  age                      :integer
#  avatar                   :string
#  birth_date               :date
#  email                    :string
#  gender                   :string
#  height                   :float
#  last_name                :string
#  mothers_last_name        :string
#  name                     :string
#  objectives               :string           default([]), is an Array
#  occupation               :string
#  phone                    :string
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
class Patient < ApplicationRecord
  belongs_to :user
  has_one :plan, dependent: :destroy
  has_many :medical_histories

  def male?
    gender == 'male'
  end
end
