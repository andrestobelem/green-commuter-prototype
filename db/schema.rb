# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 10) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "car_id"
    t.datetime "departure_datetime"
    t.integer  "departure_parking_space_id"
    t.datetime "arrival_datetime"
    t.integer  "arrival_parking_space_id"
  end

  add_index "bookings", ["arrival_parking_space_id"], name: "index_bookings_on_arrival_parking_space_id", using: :btree
  add_index "bookings", ["car_id"], name: "index_bookings_on_car_id", using: :btree
  add_index "bookings", ["departure_parking_space_id"], name: "index_bookings_on_departure_parking_space_id", using: :btree

  create_table "cars", force: :cascade do |t|
    t.string   "name"
    t.integer  "initial_parking_space_id"
    t.datetime "initial_datetime"
  end

  add_index "cars", ["initial_parking_space_id"], name: "index_cars_on_initial_parking_space_id", using: :btree

  create_table "parking_spaces", force: :cascade do |t|
    t.string "location_name"
  end

end
