# frozen_string_literal: true
require 'csv'

class AddGrasaSPAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'GRASA_S_P.csv'))
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
        satured_fatty_acids: row[10],
        monounsaturated_fatty_acids: row[11],
        polyunsaturated_fatty_acids: row[12],
        cholesterol: row[13],
        sodium: row[14],
      )
    end    
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
