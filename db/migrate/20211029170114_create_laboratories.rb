class CreateLaboratories < ActiveRecord::Migration[6.1]
  def change
    create_table :laboratories do |t|
      t.string :analysis_type
      t.date :analysis_date
      t.string :file
      t.references :medical_history, null: false, foreign_key: true

      t.timestamps
    end
  end
end
