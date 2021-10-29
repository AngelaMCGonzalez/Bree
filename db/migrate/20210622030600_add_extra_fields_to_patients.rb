# frozen_string_literal: true

class AddExtraFieldsToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :age, :integer
    add_column :patients, :weight, :float
    add_column :patients, :height, :float
    add_column :patients, :gender, :string
    add_column :patients, :physical_activity_factor, :float
  end
end
