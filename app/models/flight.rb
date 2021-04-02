class Flight < ApplicationRecord

  belongs_to :from_airport, class_name: "Airport", foreign_key: :start_airport_id
  belongs_to :to_airport, class_name: "Airport", foreign_key: :finish_airport_id

  has_many :bookings
  has_many :passengers, through: :bookings

  def self.get_dates
    dates = Flight.distinct.pluck("date(start_time)")
  end

  def details
    "Flight ID Code: #{id},
    From: #{from_airport.code},
    To: #{to_airport.code},
    Departure time: " + start_time.strftime("%m/%d/%Y, %l:%M %P") + ",
    Arrival time: " + (start_time + flight_duration).strftime("%m/%d/%Y, %l:%M %P")
  end

end
