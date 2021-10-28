# frozen_string_literal: true

require 'csv'

class AddSugarCGAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'AZUCAR_C_G.csv'))
    csv = CSV.parse(file, headers: false)
    csv.each do |row|
      Aliment.create!(group_name: row[0], name: row[1], suggested_amount: row[2], unit: row[3], gross_weight: row[4],
                      net_weight: row[5], energy: row[6], protein: row[7], lipids: row[8], carbohydrates: row[9], sodium: row[10], sugars_per_equivalent: row[11], glycemic_index: row[12], glycemic_load: row[13])
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
