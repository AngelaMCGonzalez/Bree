# == Schema Information
#
# Table name: aliments
#
#  id               :bigint           not null, primary key
#  calcium          :decimal(, )      default(0.0)
#  carbohydrates    :decimal(, )      default(0.0)
#  cholesterol      :decimal(, )      default(0.0)
#  energy           :integer          default(0)
#  gross_weight     :integer          default(0)
#  group_name       :string           default(""), not null
#  iron             :decimal(, )      default(0.0)
#  lipids           :decimal(, )      default(0.0)
#  name             :string           default(""), not null
#  net_weight       :integer          default(0)
#  protein          :decimal(, )      default(0.0)
#  selenium         :decimal(, )      default(0.0)
#  sodium           :decimal(, )      default(0.0)
#  suggested_amount :integer          default(0)
#  unit             :string           default("")
#  vitamin_a        :decimal(, )      default(0.0)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Aliment < ApplicationRecord
end