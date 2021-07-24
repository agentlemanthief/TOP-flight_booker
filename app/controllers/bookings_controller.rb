class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers]
  end

  private

  def booking_params
    params.require(:booking).permit(:passengers, :flight_id)
  end
end
