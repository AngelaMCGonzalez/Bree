# frozen_string_literal: true

module Admin
  class RecipesController < BaseController
    before_action :set_recipe, only: %i[show edit update destroy]

    layout 'recipes'

    def index
      @recipes = Recipe.all
      render layout: 'admin'
    end

    def show; end

    def new
      @recipe = Recipe.new
    end

    def create
      @recipe = Recipe.new(recipe_params)
      if @recipe.save
        redirect_to admin_recipe_url(id: @recipe.id), notice: 'Receta creada satisfactoriamente'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit; end

    def update
      if @recipe.update(recipe_params)
        redirect_to admin_recipe_url(id: @recipe.id), notice: 'Receta actualizada satisfactoriamente'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @recipe.destroy
      redirect_to admin_recipes_path, notice: 'Receta eliminada correctamente'
    end

    private

    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:name, :image, :custom_id, :preparation_time, :cooking_time, :ingredients, :steps,
                                     :condiments, :food_time_priority, :accompaniment, food_time: [], recipe_type: [])
    end
  end
end
