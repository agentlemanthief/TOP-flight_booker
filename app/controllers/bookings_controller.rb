class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @passenger_num = params[:passengers]
    # params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create

  end

  private

  def booking_params
    params.require(:booking).permit(:passengers, :flight_id, passengers_attributes: [:id, :name, :email])
  end
end
