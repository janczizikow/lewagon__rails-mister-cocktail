class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show create]

  def index
    if params[:query].blank?
      @cocktails = Cocktail.all
    else
      @cocktails = Cocktail.where('name LIKE ?', "%#{params[:query]}%")
    end
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktial.Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end