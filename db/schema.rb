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

ActiveRecord::Schema.define(version: 20140810080838) do

  create_table "assignments", force: true do |t|
    t.integer  "route_id"
    t.integer  "bus_id"
    t.integer  "night"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["bus_id"], name: "index_assignments_on_bus_id"
  add_index "assignments", ["route_id"], name: "index_assignments_on_route_id"

  create_table "buses", force: true do |t|
    t.string   "number"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: true do |t|
    t.string   "city"
    t.decimal  "km_real"
    t.decimal  "km_plasma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "route_types", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "routes", force: true do |t|
    t.string   "code_name"
    t.integer  "destination_id"
    t.integer  "route_type_id"
    t.string   "time"
    t.integer  "night"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "express"
  end

  add_index "routes", ["destination_id"], name: "index_routes_on_destination_id"
  add_index "routes", ["route_type_id"], name: "index_routes_on_route_type_id"

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
