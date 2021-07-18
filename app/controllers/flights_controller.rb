class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airports = Airport.all
    @flight_date_options = Flight.all.map { |flight| [ flight_date_formatted(flight.departure), flight.departure ] }
    @airport_options = Airport.all.map { |airport| [ airport.name, airport.airport_code ] }
    @passenger_options = (1..4).each
  end

  def show
    @flight = Flight.find(params[:id])
  end

  def new
    @flights = Flight.all
  end

  def flight_date_formatted(date)
    date.strftime('%d/%m/%Y %H:%M')
  end

  private

  # def flight_params
  #   params.require(:flight).permit(:origin, :destination, :departure, :duration,
  #     :airport_attributes => [:id, :name, :airport_code])
  # end
end
