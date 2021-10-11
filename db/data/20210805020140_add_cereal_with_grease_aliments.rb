# frozen_string_literal: true
require 'csv'

class AddCerealWithGreaseAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'CEREAL_CON_GRASA.csv'))
    csv = CSV.parse(file, headers: false)
    csv.each do |row|
      Aliment.create!(
        group_name: row[0], 
        name: row[1], 
        suggested_amount: row[2],
        unit: row[3], 
        gross_weight: row[4],
        net_weight: row[5],
        energy: row[6],
        protein: row[7],
        lipids: row[8],
        carbohydrates: row[9],
        fiber: row[10],
        folic_acid: row[11],
        calcium: row[12],
        iron: row[13],
        sodium: row[14],
        sugars_per_equivalent: row[15],
        glycemic_index: row[16],
        glycemic_load: row[17],
      )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
