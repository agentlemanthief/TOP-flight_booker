class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @passenger_num = params[:passenger_num].to_i
    @passenger_num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = 'Booking successfull!'
      redirect_to @booking
    else
      flash[:error] = 'Booking error!'
      redirect_to root_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:passenger_id, :flight_id, passengers_attributes: [:id, :name, :email])
  end
end
