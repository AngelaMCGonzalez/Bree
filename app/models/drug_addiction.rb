# == Schema Information
#
# Table name: drug_addictions
#
#  id                  :bigint           not null, primary key
#  alcohol_consumption :string
#  tobacco_consumption :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class DrugAddiction < ApplicationRecord
    belongs_to :physical_exploration
end
