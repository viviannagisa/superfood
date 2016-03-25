class CategoriesController < ApplicationController


  def show
    @recipes = Recipe.skin_conditions.page(params[:page]).per(4)
  end

  def skin_conditions
    @recipes = Recipe.skin_conditions.page(params[:page]).per(4)
  end

  def health_conditions
  end

  def anti_aging
  end
end
