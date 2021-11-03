# frozen_string_literal: true

class AddIngredientsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :ingredients, :string
  end
end
