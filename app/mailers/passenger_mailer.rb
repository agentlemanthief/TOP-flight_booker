class PassengerMailer < ApplicationMailer
  def thank_you_email
    @passenger = params[:passenger]
    # @url for development
    # @url = "http://127.0.0.1:3000/bookings/#{params[:id]}"

    # @url for production
    @url = "https://pacific-tundra-92135.herokuapp.com/bookings/#{params[:id]}"

    mail(to: @passenger.email, subject: 'Your Flight Booking')
  end
end
