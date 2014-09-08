class SeatyourselfController < ApplicationController
  def index
  	  @restaurant = Restaurant.all
  	  @business_user = BusinessUser.all
  	  @user = User.all
  end
  def show
  	@restaurant = Restaurant.find(params[:id])
  end
end
