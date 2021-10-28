# frozen_string_literal: true

class AddFiberAndFolicAcidToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :fiber, :decimal, null: true, default: 0.0
    add_column :aliments, :folic_acid, :decimal, null: true, default: 0.0
  end
end
