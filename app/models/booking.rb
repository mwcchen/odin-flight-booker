class Booking < ApplicationRecord
  belongs_to :flight, class_name: "Flight"
  belongs_to :passenger
end
