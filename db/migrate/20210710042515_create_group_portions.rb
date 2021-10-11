class CreateGroupPortions < ActiveRecord::Migration[6.1]
  def change
    create_table :group_portions do |t|
      t.references :plan, null: false, foreign_key: true
      t.jsonb :vegetables, null: false, default: { carbohydrates: 4, protein: 2, lipids: 0, energy: 25, quantity: 0 }
      t.jsonb :fruit, null: false, default: { carbohydrates: 15, protein: 0, lipids: 0, energy: 60, quantity: 0 }
      t.jsonb :cereals_s_g, null: false, default: { carbohydrates: 15, protein: 2, lipids: 0, energy: 70, quantity: 0 }
      t.jsonb :cereals_c_g, null: false, default: { carbohydrates: 15, protein: 2, lipids: 5, energy: 115, quantity: 0 }
      t.jsonb :legumes, null: false, default: { carbohydrates: 20, protein: 8, lipids: 1, energy: 120, quantity: 0 }      
      t.jsonb :aoa_mbag, null: false, default: { carbohydrates: 0, protein: 7, lipids: 1, energy: 40, quantity: 0 }
      t.jsonb :aoa_bag, null: false, default: { carbohydrates: 0, protein: 7, lipids: 3, energy: 55, quantity: 0 }
      t.jsonb :aoa_mag, null: false, default: { carbohydrates: 0, protein: 7, lipids: 5, energy: 75, quantity: 0 }
      t.jsonb :aoa_aag, null: false, default: { carbohydrates: 0, protein: 7, lipids: 8, energy: 100, quantity: 0 }
      t.jsonb :skim_milk, null: false, default: { carbohydrates: 12, protein: 9, lipids: 2, energy: 95, quantity: 0 }
      t.jsonb :semi_milk, null: false, default: { carbohydrates: 12, protein: 9, lipids: 4, energy: 110, quantity: 0 }
      t.jsonb :whole_milk, null: false, default: { carbohydrates: 12, protein: 9, lipids: 8, energy: 150, quantity: 0 }
      t.jsonb :milk_c_a, null: false, default: { carbohydrates: 30, protein: 8, lipids: 5, energy: 200, quantity: 0 }
      t.jsonb :fats_s_p, null: false, default: { carbohydrates: 0, protein: 0, lipids: 5, energy: 45, quantity: 0 }
      t.jsonb :fats_c_p, null: false, default: { carbohydrates: 3, protein: 3, lipids: 5, energy: 70, quantity: 0 }
      t.jsonb :sugars_s_g, null: false, default: { carbohydrates: 10, protein: 0, lipids: 0, energy: 40, quantity: 0 }
      t.jsonb :sugars_c_g, null: false, default: { carbohydrates: 10, protein: 0, lipids: 5, energy: 85, quantity: 0 }
      t.jsonb :ale, null: false, default: { carbohydrates: 0, protein: 0, lipids: 0, energy: 0, quantity: 0 }

      t.timestamps
    end
  end
end
