class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @reviews = @restaurant.reviews
    @average = average_rating(@reviews)
    @empty_stars = blank_stars(@average)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  def update
    @restaurant.update(restaurant_params)

    redirect_to restaurant_path(Restaurant.last.id)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address,
                                       :phone_number, :category)
  end

  def average_rating(reviews_list)
    reviews_list.average(:rating).to_i
  end

  def blank_stars(moyenne)
    5 - moyenne
  end
end
