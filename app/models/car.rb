class Car < ActiveRecord::Base
  belongs_to :initial_parking_space, class_name: ParkingSpace
  has_many :booking

  def parking_space?(datetime)
    self.booking.order(arrival_datetime: :desc)
      .where('arrival_datetime <= :datetime', datetime: datetime)
      .first
      .arrival_parking_space
  end

  def avaiable_at?(datetime)
    self.booking.where('departure_datetime <= :datetime ' \
                       'and :datetime <= arrival_datetime', datetime: datetime).count == 0
  end

  def avaiable_in_range?(from_datetime, to_datetime)
    self.booking.where('(:from_datetime <= departure_datetime ' \
                       'and departure_datetime <= :to_datetime) ' \
                       'or ' \
                       '(:from_datetime <= arrival_datetime ' \
                       'and arrival_datetime <= :to_datetime)',
                       from_datetime: from_datetime, to_datetime: to_datetime).count == 0
  end

  def avaible_range(parking_space, datetime)
    datetime = datetime.at_beginning_of_day
    self.booking.where('(:from_datetime <= departure_datetime ' \
                       'and departure_datetime <= :to_datetime) ' \
                       'or ' \
                       '(:from_datetime <= arrival_datetime ' \
                       'and arrival_datetime <= :to_datetime)',
                       from_datetime: from_datetime, to_datetime: to_datetime).count == 0
  end

  def self.cars_at?(datetime, parking_space)
    Car.all
  end

  def self.nissan
    Car.find_by(name: 'Nissan')
  end

  def self.ford
    Car.find_by(name: 'Ford')
  end


  def self.tesla
    Car.find_by(name: 'Tesla')
  end
end
