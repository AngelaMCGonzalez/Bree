class CreateAliments < ActiveRecord::Migration[6.1]
  def change
    create_table :aliments do |t|
      t.string :name, null: false, default: ''
      t.string :group_name, null: false, default: ''
      t.integer :suggested_amount, null: true, default: 0
      t.string :unit, null: true, default: ''
      t.integer :gross_weight, null: true, default: 0
      t.integer :net_weight, null: true, default: 0
      t.integer :energy, null: true, default: 0
      t.decimal :protein, null: true, default: 0.0
      t.decimal :lipids, null: true, default: 0.0
      t.decimal :carbohydrates, null: true, default: 0.0
      t.decimal :cholesterol, null: true, default: 0.0
      t.decimal :vitamin_a, null: true, default: 0.0
      t.decimal :calcium, null: true, default: 0.0
      t.decimal :iron, null: true, default: 0.0
      t.decimal :sodium, null: true, default: 0.0
      t.decimal :selenium, null: true, default: 0.0

      t.timestamps
    end
  end
end
