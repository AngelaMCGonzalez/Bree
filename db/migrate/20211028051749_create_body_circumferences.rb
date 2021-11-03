class CreateBodyCircumferences < ActiveRecord::Migration[6.1]
  def change
    create_table :body_circumferences do |t|
      t.float :waist
      t.float :hip
      t.float :relaxed_arm
      t.float :flexed_arm
      t.float :calf

      t.timestamps
    end
  end
end
