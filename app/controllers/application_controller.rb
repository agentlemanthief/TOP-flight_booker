class ApplicationController < ActionController::Base
  def flight_date_formatted(date)
    date.strftime('%d/%m/%Y %H:%M')
  end
end
