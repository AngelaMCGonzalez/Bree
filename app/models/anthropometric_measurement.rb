# == Schema Information
#
# Table name: anthropometric_measurements
#
#  id           :bigint           not null, primary key
#  bmi          :float
#  size         :float
#  usual_weight :float
#  weight       :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class AnthropometricMeasurement < ApplicationRecord
    belongs_to :medical_history
end
