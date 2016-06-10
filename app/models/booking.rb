class Booking < ActiveRecord::Base
  belongs_to :car
  belongs_to :departure_parking_space, class_name: ParkingSpace
  belongs_to :arrival_parking_space, class_name: ParkingSpace
end
