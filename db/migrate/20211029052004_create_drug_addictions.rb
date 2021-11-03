class CreateDrugAddictions < ActiveRecord::Migration[6.1]
  def change
    create_table :drug_addictions do |t|
      t.string :alcohol_consumption
      t.string :tobacco_consumption

      t.timestamps
    end
  end
end
