class AddEthanolAttributeToAliments < ActiveRecord::Migration[6.1]
  def change
    add_column :aliments, :ethanol, :decimal, null: true, default: 0.0
  end
end
