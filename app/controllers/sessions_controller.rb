class SessionsController < ApplicationController
  layout "business_user"
  def new
  end

  def create
  	user = BusinessUser.find_by(username: params[:username])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to business_user_path(user), notice: "Logged in! Welcome back,#{user.username}"
  	else
  		flash.now[:alert] = "Invalid user name or password"
      @restaurants = Restaurant.all
  		render "business_users/index"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to business_users_path, notice: "Logged out!"
  end
end
