# == Schema Information
#
# Table name: recipes
#
#  id                 :bigint           not null, primary key
#  accompaniment      :string
#  condiments         :string           default([]), is an Array
#  cooking_time       :integer
#  food_time          :string           default([]), is an Array
#  food_time_priority :string
#  image              :string
#  ingredients        :string
#  name               :string
#  preparation_mode   :string           default([]), is an Array
#  preparation_time   :integer
#  recipe_type        :string           default([]), is an Array
#  steps              :string           default([]), is an Array
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  custom_id          :string
#
# Indexes
#
#  index_recipes_on_condiments        (condiments) USING gin
#  index_recipes_on_food_time         (food_time) USING gin
#  index_recipes_on_preparation_mode  (preparation_mode) USING gin
#  index_recipes_on_recipe_type       (recipe_type) USING gin
#  index_recipes_on_steps             (steps) USING gin
#
class Recipe < ApplicationRecord
end
