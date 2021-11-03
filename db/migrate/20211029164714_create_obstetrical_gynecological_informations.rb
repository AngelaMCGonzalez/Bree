class CreateObstetricalGynecologicalInformations < ActiveRecord::Migration[6.1]
  def change
    create_table :obstetrical_gynecological_informations do |t|
      t.date :last_menstruation
      t.string :contraceptives
      t.boolean :pregnancy
      t.boolean :lactation

      t.timestamps
    end
  end
end
