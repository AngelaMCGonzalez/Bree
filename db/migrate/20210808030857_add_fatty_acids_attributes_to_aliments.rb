class AddFattyAcidsAttributesToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :satured_fatty_acids, :decimal, null: true, default: 0.0
    add_column :aliments, :monounsaturated_fatty_acids, :decimal, null: true, default: 0.0
    add_column :aliments, :polyunsaturated_fatty_acids, :decimal, null: true, default: 0.0
  end
end
