class RestaurantsController < ApplicationController
  # before_action :set_task, only: %i[show edit update destroy]
  # I can list restaurants
  def index
    @restaurants = Restaurant.all
  end

  # I can view the details of a restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  # I can add a new restaurant (new and create)
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # I can edit a restaurant (edit and update)
  # def edit
  # end

  # def update
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # I can remove a restaurant
  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path, status: :see_other
  # end

  private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
