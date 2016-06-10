class CreatePrototype < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.references :initial_parking_space, references: :parking_spaces, index: true
      t.datetime :initial_datetime
    end

    create_table :parking_spaces do |t|
      t.string :location_name
    end

    create_table :bookings do |t|
      t.references :car, index: true
      t.datetime :departure_datetime
      t.references :departure_parking_space, references: :parking_spaces, index: true
      t.datetime :arrival_datetime
      t.references :arrival_parking_space, references: :parking_spaces, index: true
    end
  end
end
