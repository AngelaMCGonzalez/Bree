class CreateMacronutrients < ActiveRecord::Migration[6.1]
  def change
    create_table :macronutrients do |t|
      t.references :plan, null: false, foreign_key: true
      t.jsonb :carbohydrates, null: false, default: { percentage: 50, grams: 287.50 }
      t.jsonb :protein, null: false, default: { percentage: 25, grams: 143.75 }
      t.jsonb :lipids, null: false, default: { percentage: 25, grams: 63.89 }

      t.timestamps
    end
  end
end
