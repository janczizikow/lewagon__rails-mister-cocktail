class ReviewsController < ApplicationController
  before_action :set_cocktail
  def create
    @review = Review.new(review_params)
    # Need to add the dose in case form is invalid
    @dose = Dose.new

    @review.cocktail = @cocktail

    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'cocktails/show'
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
