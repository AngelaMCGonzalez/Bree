# == Schema Information
#
# Table name: aliments
#
#  id                          :bigint           not null, primary key
#  ascorbic_acid               :string           default("")
#  calcium                     :decimal(, )      default(0.0)
#  carbohydrates               :decimal(, )      default(0.0)
#  cholesterol                 :decimal(, )      default(0.0)
#  energy                      :integer          default(0)
#  ethanol                     :decimal(, )      default(0.0)
#  fiber                       :decimal(, )      default(0.0)
#  folic_acid                  :decimal(, )      default(0.0)
#  glycemic_index              :string           default("")
#  glycemic_load               :string           default("")
#  gross_weight                :integer          default(0)
#  group_name                  :string           default(""), not null
#  iron                        :decimal(, )      default(0.0)
#  lipids                      :decimal(, )      default(0.0)
#  monounsaturated_fatty_acids :decimal(, )      default(0.0)
#  name                        :string           default(""), not null
#  net_weight                  :integer          default(0)
#  phosphorus                  :string
#  polyunsaturated_fatty_acids :decimal(, )      default(0.0)
#  potassium                   :string
#  protein                     :decimal(, )      default(0.0)
#  satured_fatty_acids         :decimal(, )      default(0.0)
#  selenium                    :decimal(, )      default(0.0)
#  sodium                      :decimal(, )      default(0.0)
#  sugars_per_equivalent       :string           default("")
#  suggested_amount            :string           default("")
#  unit                        :string           default("")
#  vitamin_a                   :decimal(, )      default(0.0)
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#
class Aliment < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :full_search,
    against: :name
    
end
