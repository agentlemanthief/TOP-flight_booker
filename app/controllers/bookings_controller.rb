class BookingsController < ApplicationController
  def new
    @booking = Booking.new

    if params[:flight_id]
      @flight = Flight.find(params[:flight_id])
    else
      flash[:alert] = 'Please select a flight!'
      redirect_back(fallback_location: root_path)
    end

    @passenger_num = params[:passenger_num].to_i
    @passenger_num.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:notice] = 'Booking successfull!'
      redirect_to @booking
    else
      flash[:alert] = @booking.errors.full_messages.to_sentence
      redirect_back(fallback_location: root_path)
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
