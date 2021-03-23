class Flight < ApplicationRecord

  def self.get_start_times
    start_times = Flight.find_by_sql("select distinct start_time from flights where start_time is not null order by start_time desc")
  end

  def start_time_formatted
    start_time.strftime("%m/%d/%Y")
  end

end
