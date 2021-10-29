# frozen_string_literal: true

class RemoveRecipeTypeFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :recipe_type, :string
  end
end
