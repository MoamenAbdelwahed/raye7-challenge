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

ActiveRecord::Schema.define(version: 20160908142446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.string   "departure_time"
    t.string   "seats"
    t.integer  "driver_id"
    t.integer  "source_id"
    t.integer  "destination_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "trips_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "trip_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "phone_number"
    t.integer "group_id"
    t.integer "home_place_id"
    t.integer "work_place_id"
  end

  add_index "users", ["group_id"], name: "index_users_on_group_id", using: :btree

end
