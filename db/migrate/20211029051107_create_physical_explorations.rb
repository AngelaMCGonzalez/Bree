class CreatePhysicalExplorations < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_explorations do |t|
      t.text :hair_description
      t.text :skin_description
      t.text :eyes_description
      t.text :nails_description
      t.text :mouth_description
      t.float :blood_pressure

      t.timestamps
    end
  end
end
