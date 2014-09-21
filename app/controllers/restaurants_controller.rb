class RestaurantsController < ApplicationController
  
  before_filter :authorize_business_user, :except => [:show]

  def index
  end
  
  def new
  	 @restaurant = Restaurant.new
  end

  def create
    @restaurant = current_bu.restaurants.build(restaurant_params)
  	if @restaurant.save
  		redirect_to business_user_path(current_bu), notice: "Restaurant profile created sucessfully!"
  	else
  		render "business_users/show"	
  	end
  end

  def edit
    @restaurant = current_bu.restaurants.find(params[:id])
    render :layout => "business_user"
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(restaurant_params)
      redirect_to business_user_path(current_bu)
    else 
      render :edit
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to business_user_path(current_bu)
  end
  
  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  private
  
  def restaurant_params
  	params.require(:restaurant).permit(:name, :phone,:address, :cuisine, :picture_url, :website, :email, :username, :password, :password_confirmation, :capacity)
  end

  def authorize_business_user
    if !current_bu
      redirect_to new_session_path
    end
  end
end
