class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map{ |airport| [ airport.code ] }
    @dates = Flight.distinct.pluck("date(start_time)")
    if params[:commit] == "Search"
      @search_res = Flight.joins(:from_airport, :to_airport).where("from_airport.code": params[:from_code], "to_airport.code": params[:to_code], "start_time": params[:date].to_date.all_day)
      render :index
    end
  end

  private

  def search_params
    params.permit(:from_code, :to_code, :num_tickets, :date)
  end

end
