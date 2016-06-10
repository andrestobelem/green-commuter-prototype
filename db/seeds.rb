# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8

san_telmo = ParkingSpace.new
san_telmo.location_name = 'San Telmo'
san_telmo.save!

plaza_italia = ParkingSpace.new
plaza_italia.location_name = 'Plaza Italia'
plaza_italia.save!

retiro = ParkingSpace.new
retiro.location_name = 'Retiro'
retiro.save!

nissan = Car.new
nissan.name = 'Nissan'
nissan.initial_parking_space = san_telmo
nissan.initial_datetime = DateTime.new(2016, 6, 10, 11, 0, 0)
nissan.save!

ford = Car.new
ford.name = 'Ford'
ford.initial_parking_space = plaza_italia
ford.initial_datetime = DateTime.new(2016, 6, 10, 11, 0, 0)
ford.save!

tesla = Car.new
tesla.name = 'Tesla'
tesla.initial_parking_space = retiro
tesla.initial_datetime = DateTime.new(2016, 6, 10, 11, 0, 0)
tesla.save!

start = DateTime.new(2016, 6, 13, 0, 0, 0)

5.times do |t|
  booking_nissan = Booking.new
  booking_nissan.car = nissan
  booking_nissan.departure_datetime = start + t.days + 9.hours
  booking_nissan.departure_parking_space = san_telmo
  booking_nissan.arrival_datetime = start + t.days + 10.hours
  booking_nissan.arrival_parking_space = plaza_italia
  booking_nissan.save!

  booking_nissan = Booking.new
  booking_nissan.car = nissan
  booking_nissan.departure_datetime = start + t.days + 18.hours
  booking_nissan.departure_parking_space = plaza_italia
  booking_nissan.arrival_datetime = start + t.days + 19.hours
  booking_nissan.arrival_parking_space = san_telmo
  booking_nissan.save!

  booking_tesla = Booking.new
  booking_tesla.car = tesla
  booking_tesla.departure_datetime = start + t.days + 11.hours
  booking_tesla.departure_parking_space = retiro
  booking_tesla.arrival_datetime = start + t.days + 12.hours
  booking_tesla.arrival_parking_space = plaza_italia
  booking_tesla.save!

  booking_tesla = Booking.new
  booking_tesla.car = tesla
  booking_tesla.departure_datetime = start + t.days + 20.hours
  booking_tesla.departure_parking_space = plaza_italia
  booking_tesla.arrival_datetime = start + t.days + 21.hours
  booking_tesla.arrival_parking_space = retiro
  booking_tesla.save!

  booking_ford = Booking.new
  booking_ford.car = ford
  booking_ford.departure_datetime = start + t.days + 11.hours
  booking_ford.departure_parking_space = plaza_italia
  booking_ford.arrival_datetime = start + t.days + 12.hours
  booking_ford.arrival_parking_space = retiro
  booking_ford.save!

  booking_ford = Booking.new
  booking_ford.car = ford
  booking_ford.departure_datetime = start + t.days + 18.hours
  booking_ford.departure_parking_space = retiro
  booking_ford.arrival_datetime = start + t.days + 19.hours
  booking_ford.arrival_parking_space = plaza_italia
  booking_ford.save!
end

start = DateTime.new(2016, 6, 20, 0, 0, 0)

5.times do |t|
  booking_nissan = Booking.new
  booking_nissan.car = nissan
  booking_nissan.departure_datetime = start + t.days + 9.hours
  booking_nissan.departure_parking_space = san_telmo
  booking_nissan.arrival_datetime = start + t.days + 10.hours
  booking_nissan.arrival_parking_space = plaza_italia
  booking_nissan.save!

  booking_nissan = Booking.new
  booking_nissan.car = nissan
  booking_nissan.departure_datetime = start + t.days + 18.hours
  booking_nissan.departure_parking_space = plaza_italia
  booking_nissan.arrival_datetime = start + t.days + 19.hours
  booking_nissan.arrival_parking_space = san_telmo
  booking_nissan.save!

  booking_tesla = Booking.new
  booking_tesla.car = tesla
  booking_tesla.departure_datetime = start + t.days + 11.hours
  booking_tesla.departure_parking_space = retiro
  booking_tesla.arrival_datetime = start + t.days + 12.hours
  booking_tesla.arrival_parking_space = plaza_italia
  booking_tesla.save!

  booking_tesla = Booking.new
  booking_tesla.car = tesla
  booking_tesla.departure_datetime = start + t.days + 20.hours
  booking_tesla.departure_parking_space = plaza_italia
  booking_tesla.arrival_datetime = start + t.days + 21.hours
  booking_tesla.arrival_parking_space = retiro
  booking_tesla.save!

  booking_ford = Booking.new
  booking_ford.car = ford
  booking_ford.departure_datetime = start + t.days + 11.hours
  booking_ford.departure_parking_space = plaza_italia
  booking_ford.arrival_datetime = start + t.days + 12.hours
  booking_ford.arrival_parking_space = retiro
  booking_ford.save!

  booking_ford = Booking.new
  booking_ford.car = ford
  booking_ford.departure_datetime = start + t.days + 18.hours
  booking_ford.departure_parking_space = retiro
  booking_ford.arrival_datetime = start + t.days + 19.hours
  booking_ford.arrival_parking_space = plaza_italia
  booking_ford.save!
end
