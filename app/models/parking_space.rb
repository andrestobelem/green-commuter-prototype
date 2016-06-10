class ParkingSpace < ActiveRecord::Base
  def self.plaza_italia
    ParkingSpace.find_by(location_name: 'Plaza Italia')
  end

  def self.san_telmo
    ParkingSpace.find_by(location_name: 'San Telmo')
  end

  def self.retiro
    ParkingSpace.find_by(location_name: 'Retiro')
  end
end
