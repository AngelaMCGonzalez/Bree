class CreateAnthropometricMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :anthropometric_measurements do |t|
      t.float :size
      t.float :weight
      t.float :bmi
      t.float :usual_weight

      t.timestamps
    end
  end
end
