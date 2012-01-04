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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120104030341) do

  create_table "animals", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.string   "sex"
    t.integer  "abundance"
    t.string   "county"
    t.string   "grid"
    t.string   "provenance"
    t.string   "observer"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "determiner"
    t.string   "recordtype"
    t.string   "reference"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "species", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
    t.integer  "abundance"
    t.string   "county"
    t.string   "grid"
    t.string   "provenance"
    t.string   "observer"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "determiner"
    t.string   "recordtype"
    t.string   "reference"
    t.string   "comment"
  end

  create_table "species_codes", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
    t.string   "encrypted_password"
  end

end