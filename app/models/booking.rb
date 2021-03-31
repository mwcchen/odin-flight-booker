class Booking < ApplicationRecord
  belongs_to :flight, class_name: "Flight"
  has_many :passengers
end
