# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports = Airport.create([{ code: "SFO" }, { code: "NYC" }])
flights = Flight.create([{ start_airport_id: airports.first.id, finish_airport_id: airports.last.id, start_time: DateTime.now, flight_duration: 123456 }, { start_airport_id: airports.last.id, finish_airport_id: airports.first.id, start_time: DateTime.now, flight_duration: 123456 }])
