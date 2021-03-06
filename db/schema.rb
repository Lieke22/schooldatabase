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

ActiveRecord::Schema.define(version: 20140720182834) do

  create_table "actionpoints", force: true do |t|
    t.string   "action"
    t.string   "status"
    t.date     "datum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities", force: true do |t|
    t.string   "type"
    t.string   "status"
    t.date     "datum"
    t.string   "name_user"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contactpersoons", force: true do |t|
    t.string   "name"
    t.string   "function"
    t.string   "mail"
    t.string   "telephone"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "postcode"
    t.string   "town"
    t.string   "telephone"
    t.string   "website"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
