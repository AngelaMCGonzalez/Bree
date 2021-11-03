# frozen_string_literal: true

require 'csv'

class AddIngredientesFaltantesToAliments < ActiveRecord::Migration[6.1]
  def up
    file = File.read(Rails.root.join('db', 'data', 'seeds', 'INGREDIENTES_FALTANTES.csv'))
    csv = CSV.parse(file, headers: false)
    csv.each do |row|
      Aliment.create!(
        group_name: row[0],
        name: row[1],
        suggested_amount: row[2],
        unit: row[3],
        net_weight: row[4],
        energy: row[5],
        protein: row[6],
        lipids: row[7],
        carbohydrates: row[8]
      )
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
