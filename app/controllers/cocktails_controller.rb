class CocktailsController < ApplicationController



  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    Cocktail.create(cocktail_params)
    redirect_to cocktails_path
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def destroy
    cocktail = Cocktail.find(cocktail_params[:cocktail])
    cocktail.destroy
    redirect_to cocktails
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
