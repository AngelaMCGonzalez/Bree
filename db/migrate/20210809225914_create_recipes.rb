# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.string :custom_id
      t.string :recipe_type
      t.integer :preparation_time
      t.integer :cooking_time
      t.string :food_time, array: true, default: []
      t.string :preparation_mode, array: true, default: []

      t.timestamps
    end

    add_index :recipes, :food_time, using: 'gin'
    add_index :recipes, :preparation_mode, using: 'gin'
  end
end
