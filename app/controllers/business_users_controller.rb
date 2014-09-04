class BusinessUsersController < ApplicationController
  def index
  	@business_user = BusinessUser.all
  end

  def show
  	@business_user = BusinessUser.find(params[:id])
  end

  def new
  	@business_user = BusinessUser.new
  end

  def edit
  	@business_user = BusinessUser.find(params[:id])
  end

  def update
  	@business_user = BusinessUser.find(params[:id])
  	if @business_user.update_attributes(bu_params)
  		redirect_to business_user_path(@business_user), notice: "Your profile is updated!"
  	else
  		render :edit
  	end
  end

  def create
  	@business_user = BusinessUser.new (bu_params)
  	if @business_user.save
  		redirect_to business_user_path(@business_user), notice: "Signed up!"
  	else
  		render "new"
  	end
  	
  end

private

def bu_params
	params.require(:business_user).permit(:name, :phone,:address, :cuisine, :picture_url, :website, :email, :username, :password, :password_confirmation)
end






end
