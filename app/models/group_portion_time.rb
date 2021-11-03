# frozen_string_literal: true

# == Schema Information
#
# Table name: group_portion_times
#
#  id          :bigint           not null, primary key
#  ale         :jsonb            not null
#  aoa_aag     :jsonb            not null
#  aoa_bag     :jsonb            not null
#  aoa_mag     :jsonb            not null
#  aoa_mbag    :jsonb            not null
#  cereals_c_g :jsonb            not null
#  cereals_s_g :jsonb            not null
#  fats_c_p    :jsonb            not null
#  fats_s_p    :jsonb            not null
#  fruit       :jsonb            not null
#  legumes     :jsonb            not null
#  milk_c_a    :jsonb            not null
#  semi_milk   :jsonb            not null
#  skim_milk   :jsonb            not null
#  sugars_c_g  :jsonb            not null
#  sugars_s_g  :jsonb            not null
#  vegetables  :jsonb            not null
#  whole_milk  :jsonb            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  plan_id     :bigint           not null
#
# Indexes
#
#  index_group_portion_times_on_plan_id  (plan_id)
#
# Foreign Keys
#
#  fk_rails_...  (plan_id => plans.id)
#
class GroupPortionTime < ApplicationRecord
  belongs_to :plan

  serialize :ale, JsonbSerializer
  serialize :aoa_aag, JsonbSerializer
  serialize :aoa_bag, JsonbSerializer
  serialize :aoa_mag, JsonbSerializer
  serialize :aoa_mbag, JsonbSerializer
  serialize :cereals_c_g, JsonbSerializer
  serialize :cereals_s_g, JsonbSerializer
  serialize :fats_c_p, JsonbSerializer
  serialize :fats_s_p, JsonbSerializer
  serialize :fruit, JsonbSerializer
  serialize :legumes, JsonbSerializer
  serialize :milk_c_a, JsonbSerializer
  serialize :semi_milk, JsonbSerializer
  serialize :skim_milk, JsonbSerializer
  serialize :sugars_c_g, JsonbSerializer
  serialize :sugars_s_g, JsonbSerializer
  serialize :vegetables, JsonbSerializer
  serialize :whole_milk, JsonbSerializer
end
