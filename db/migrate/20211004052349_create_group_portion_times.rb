# frozen_string_literal: true

class CreateGroupPortionTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :group_portion_times do |t|
      t.references :plan, null: false, foreign_key: true
      t.jsonb :vegetables, null: false,
                           default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :fruit, null: false,
                      default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :cereals_s_g, null: false,
                            default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :cereals_c_g, null: false,
                            default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :legumes, null: false,
                        default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :aoa_mbag, null: false,
                         default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :aoa_bag, null: false,
                        default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :aoa_mag, null: false,
                        default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :aoa_aag, null: false,
                        default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :skim_milk, null: false,
                          default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :semi_milk, null: false,
                          default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :whole_milk, null: false,
                           default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :milk_c_a, null: false,
                         default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :fats_s_p, null: false,
                         default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :fats_c_p, null: false,
                         default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :sugars_s_g, null: false,
                           default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :sugars_c_g, null: false,
                           default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.jsonb :ale, null: false,
                    default: { quantity: 0, breakfast: 0, first_collation: 0, meal: 0, second_collation: 0, dinner: 0 }
      t.timestamps
    end
  end
end
