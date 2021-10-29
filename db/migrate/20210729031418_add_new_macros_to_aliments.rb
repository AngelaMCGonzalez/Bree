# frozen_string_literal: true

class AddNewMacrosToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :sugars_per_equivalent, :string, null: true, default: ''
    add_column :aliments, :glycemic_index, :string, null: true, default: ''
    add_column :aliments, :glycemic_load, :string, null: true, default: ''
  end
end
