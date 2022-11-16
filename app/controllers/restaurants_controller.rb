class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
  end

  def create
    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant
    # @review.save
    # redirect_to restaurant_path(@restaurant)
  end
end
