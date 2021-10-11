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
class Patient < ApplicationRecord
  belongs_to :user
  has_one :plan

  def is_male?
    self.gender == 'male'    
  end
end
