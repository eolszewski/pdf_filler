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

ActiveRecord::Schema.define(version: 20140915050605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: true do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "us_citizen"
    t.boolean  "is_item_a"
    t.boolean  "is_item_b"
    t.boolean  "is_item_c"
    t.string   "state"
    t.string   "combobox"
    t.string   "social_security"
    t.string   "zipcode"
    t.string   "email"
    t.string   "telephone"
    t.string   "city"
  end

end
