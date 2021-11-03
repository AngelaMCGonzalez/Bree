class CreateBodyCompositions < ActiveRecord::Migration[6.1]
  def change
    create_table :body_compositions do |t|
      t.float :fat_percentage
      t.float :kg_fat
      t.float :muscle_mass
      t.float :body_water
      t.string :bioimpedance

      t.timestamps
    end
  end
end
