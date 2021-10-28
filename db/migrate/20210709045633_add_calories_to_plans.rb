# frozen_string_literal: true

class AddCaloriesToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :calories, :integer, default: 0
  end
end
