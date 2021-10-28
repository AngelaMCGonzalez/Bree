# frozen_string_literal: true

require 'csv'

class AddVerdurasToAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'VERDURAS.csv'))
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
        vitamin_a: row[11],
        ascorbic_acid: row[12],
        folic_acid: row[13],
        iron: row[14],
        potassium: row[15],
        glycemic_index: row[16],
        glycemic_load: row[17]
      )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
