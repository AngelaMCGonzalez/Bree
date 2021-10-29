# frozen_string_literal: true

require 'csv'

class AddLecheEnteraAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'LECHE_ENTERA.csv'))
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
        cholesterol: row[10],
        vitamin_a: row[11],
        calcium: row[12],
        sodium: row[13]
      )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
