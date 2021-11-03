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
class ObstetricalGynecologicalInformation < ApplicationRecord
  belongs_to :physical_exploration
end
