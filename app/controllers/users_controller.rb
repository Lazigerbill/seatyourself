class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = current_user
  end
  
  def new
  	@user = User.new
  end

  def create
  	@user = User.new (user_params)
  	if @user.save
  		redirect_to seatyourself_index_path, notice: "Signed up successfully!"
  	else 
  		render "new"
  	end
  end

  def destroy
  	user_session[:user_id] = nil
  	redirect_to seatyourself_index_path, notice: "Logged out!"
  	
  end


private
def user_params
	params.require(:user).permit(:first_name, :last_name, :phone, :email, :password, :password_confirmation)
end

end
