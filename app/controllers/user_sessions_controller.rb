class UserSessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id 
  		redirect_to seatyourself_index_path, notice: "Logged in! Welcome back, #{user.first_name} #{user.last_name}"
  	else
  		flash.now[:alert] = "Invalid user name or password"
      @restaurants = Restaurant.all
  		render "seatyourself/index"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to seatyourself_index_path, notice: "Logged out!"
  end
end
