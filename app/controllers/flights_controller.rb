class FlightsController < ApplicationController

  def index


        @search_res = Flight.joins(:from_airport, :to_airport).where("from_airport.code": params[:from_code], "to_airport.code": params[:to_code], "start_time": params[:date].to_date.all_day)


  end

end
