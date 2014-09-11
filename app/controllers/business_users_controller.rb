class BusinessUsersController < ApplicationController
  layout "business_user"
  def index
  	@business_user = BusinessUser.all
    @restaurant = Restaurant.all
  end

  def show
    @business_user = current_bu
    @restaurant = Restaurant.new
  end

  def new
  	@business_user = BusinessUser.new
  end

  def edit
  	@business_user = current_bu
  end

  def update
  	@business_user = current_bu
  	if @business_user.update_attributes(bu_params)
  		redirect_to business_user_path(@business_user), notice: "Your profile is updated!"
  	else
  		render :edit
  	end


  end

  def create
  	@business_user = BusinessUser.new (bu_params)
  	if @business_user.save
  		redirect_to new_session_path, notice: "Signed up successfully!  Please log in again and fill in the details about your restaurant."
  	else
  		render "new"
  	end
  	
  end

private

def bu_params
	params.require(:business_user).permit(:name, :phone,:address, :cuisine, :picture_url, :website, :email, :username, :password, :password_confirmation)
end






end
