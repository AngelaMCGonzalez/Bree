# frozen_string_literal: true
require 'csv'

class AddAleAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'ALE.csv'))
    csv = CSV.parse(file, headers: false)
    # Example:
    # Aliment.create!(group_name: row[0], name: row[1], suggested_amount: row[2],unit: row[3], gross_weight: row[4], net_weight: row[5], energy: row[6], protein: row[7], lipids: row[8],carbohydrates: row[9],cholesterol: row[10],vitamin_a: row[11],calcium: row[12],iron: row[13],sodium: row[14],selenium: row[15])
    csv.each do |row|
      Aliment.create!(group_name: row[0], name: row[1], suggested_amount: row[2],unit: row[3], gross_weight: row[4], net_weight: row[5], energy: row[6], protein: row[7], lipids: row[8],carbohydrates: row[9], sodium: row[10])
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
