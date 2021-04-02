class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    Integer(params[:num_tickets]).times{ @booking.passengers.build }
  end

  def create
    flight = Flight.find(params[:flight_id])
    @booking = flight.bookings.build(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(passengers_attributes:[:name, :email])
  end
end
