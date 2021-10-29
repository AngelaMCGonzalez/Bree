# frozen_string_literal: true

class AddAccompanimentToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :accompaniment, :string
  end
end
