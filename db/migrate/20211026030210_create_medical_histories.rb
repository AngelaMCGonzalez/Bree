class CreateMedicalHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_histories do |t|
      t.string :diseases, array: true, default: []
      t.text :medicines
      t.boolean :surgeries
      t.string :gastrointestinal_disorders, array: true, default: []
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
