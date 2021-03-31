class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    Integer(params[:num_tickets]).times{ @booking.passengers << Passenger.new }
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private

  def booking_params
    params.require(:booking).permit(:num_tickets, :flight_id)
  end
end
