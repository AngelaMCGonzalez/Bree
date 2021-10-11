# frozen_string_literal: true
require 'csv'

class AddAlcoholicDrinksAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'BEBIDAS_ALCOHOLICAS.csv'))
    csv = CSV.parse(file, headers: false)
    csv.each do |row|
      Aliment.create!(group_name: row[0], name: row[1], suggested_amount: row[2],unit: row[3], gross_weight: row[4], net_weight: row[5], energy: row[6],carbohydrates: row[7], ethanol: row[8])
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
