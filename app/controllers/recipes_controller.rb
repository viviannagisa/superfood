class RecipesController < ApplicationController
  before_action :authenticate_user!,:only => [:new]

  def index
    @recipes = Recipe.order("created_at DESC").page(params[:page]).per(7)
  end

  def new
  end

  def create
    Recipe.create(recipe_params)
  end

  def show
    @recipes= Recipe.find(params[:id])
    
  end

  def skin_conditions_recipe
   @recipe = Recipe.skin_conditions.page(params[:page]).per(4)
  end

  def health_conditions_recipe
    @recipe = Recipe.health_conditions.page(params[:page]).per(4)
  end

  def anti_aging_recipe
    @recipe = Recipe.anti_aging.page(params[:page]).per(4)
  end

  def recipe_lists
    @recipes = Recipe.order("created_at DESC").page(params[:page]).per(7)
  end

  def recipes
    @recipes = Recipe.order("created_at DESC").page(params[:page]).per(7)
  end




  private
  def recipe_params
    prm = params.permit(:name, :title, :image, :contents, :category)
    prm[:user_id] = current_user.id
    return prm
  end
end
