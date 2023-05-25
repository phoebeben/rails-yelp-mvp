class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      @review = Review.new
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :restaurant_id, :rating)
  end
end
