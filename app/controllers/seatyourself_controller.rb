class SeatyourselfController < ApplicationController
  def index
  	@restaurants = if params[:search]
  		Restaurant.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%")
  	else
  	  	Restaurant.all
  	end

  	if request.xhr?
  		render @restaurants
  	end
  	
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def about
  end
end
