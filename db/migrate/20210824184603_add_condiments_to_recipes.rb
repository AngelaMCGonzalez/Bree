class AddCondimentsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :condiments, :string, array: true, default: []

    add_index :recipes, :condiments, using: 'gin'
  end
end
