# frozen_string_literal: true

class AddStepsFieldToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :steps, :string, array: true, default: []

    add_index :recipes, :steps, using: 'gin'
  end
end
