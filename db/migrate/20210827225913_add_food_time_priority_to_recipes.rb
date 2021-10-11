class AddFoodTimePriorityToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :food_time_priority, :string
  end
end
