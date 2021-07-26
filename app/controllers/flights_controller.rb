class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map { |airport| [airport.name, airport.airport_code] }
    @passenger_options = (1..4).each
    @search_results = search
  end

  def search
    if params[:search]
      result = Flight.where("origin = ? AND destination = ? AND departure LIKE ?", params[:search][:from_airport], params[:search][:to_airport], "#{params[:search][:date]} %")
    end
  end

  private

  def flight_search_params
    params.require(:search).permit(:from_airport, :to_airport, :date, :passenger_num)
  end
end
