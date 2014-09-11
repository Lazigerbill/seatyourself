class ReservationsController < ApplicationController
  def new
  	@reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end


  def create
  	@restaurant = Restaurant.find(params[:restaurant_id])
  	@reservation = @restaurant.reservations.build(reservation_params)
  	@reservation.user = current_user
  	if @reservation.save
  		redirect_to seatyourself_index_path, notice: "Reseravtion made successfully!"
  	else
  		render restaurant_path(@restaurant)
  	end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to seatyourself_index_path
  end


private
def reservation_params
	params.require(:reservation).permit(:persons, :date, :time)
 	
end 
end
