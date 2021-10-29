# frozen_string_literal: true

class AddPhosphorusAndPotassiumToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :potassium, :string, null: true, default: ''
    add_column :aliments, :phosphorus, :string, null: true, default: ''
  end
end
