class AddNewRecipeTypeToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :recipe_type, :string, array: true, default: []
    
    add_index :recipes, :recipe_type, using: 'gin'
  end
end
