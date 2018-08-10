class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show]

  def index
    if params[:query].blank?
      @cocktails = Cocktail.all.order('created_at DESC')
    else
      @cocktails = Cocktail.where('lower(name) LIKE ?', "%#{params[:query]}%").order('created_at DESC')
    end
  end

  def show
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo_cache)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
