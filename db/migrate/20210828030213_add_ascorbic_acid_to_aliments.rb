# frozen_string_literal: true

class AddAscorbicAcidToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :ascorbic_acid, :string, null: true, default: ''
  end
end
