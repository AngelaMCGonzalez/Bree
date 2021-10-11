# == Schema Information
#
# Table name: invitations
#
#  id                     :bigint           not null, primary key
#  city                   :string
#  email                  :string
#  name                   :string
#  nutrition_professional :boolean
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Invitation < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :city, presence: true
end
