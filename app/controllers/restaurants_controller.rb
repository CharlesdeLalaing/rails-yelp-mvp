class RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
    end
    def show 
      @restaurant = Restaurant.find(params[:id])
    end
    def new
      @restaurant = Restaurant.new # needed to instantiate the form_for
    end
    def create
      @restaurant = Restaurant.new(restaurant_params)
      @restaurant.save
      # Will raise ActiveModel::ForbiddenAttributesError
      redirect_to restaurant_path(@restaurant)
    end
    private
    def restaurant_params
      params.require(:restaurant).permit(:name, :category, :phone_number, :adress)
    end 
  end
  
  
  
  
  
  