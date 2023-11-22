class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create

  end

  def show; end

private

  def set_restaurant
    @restaurant = Restaurant.find(paprams[:id])
  end
end
