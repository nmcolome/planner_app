class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(modified_params)

    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update!(modified_params)
      redirect_to ingredient_path(@ingredient)
    else
      render :edit
    end
  end

  private
    def ingredient_params
      params.require(:ingredient).permit(:name, :category, :status)
    end

    def modified_params
      { name: ingredient_params[:name], category: ingredient_params[:category].to_i, status: ingredient_params[:status].to_i }
    end
end
