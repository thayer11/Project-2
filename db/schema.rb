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

ActiveRecord::Schema.define(version: 20160719002030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avalanches", force: :cascade do |t|
    t.string   "date"
    t.string   "state"
    t.string   "region"
    t.string   "type"
    t.string   "size_crown"
    t.string   "size_runout"
    t.string   "temperature"
    t.string   "temperature_high_past_24hrs"
    t.string   "temperature_low_past_24hrs"
    t.string   "percipitation"
    t.string   "wind_speed"
    t.string   "wind_direction"
    t.string   "aspect"
    t.string   "elevation"
    t.string   "snowpack"
    t.text     "area_description"
    t.text     "route_description"
    t.string   "trigger"
    t.string   "did_you_see_any_avalanches"
    t.string   "did_you_trigger_any_avalanches"
    t.string   "buried"
    t.string   "caught"
    t.string   "dead"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
