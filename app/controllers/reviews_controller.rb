class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(params[:review_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to review_path(@review)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
