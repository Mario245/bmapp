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

ActiveRecord::Schema.define(version: 20151214154238) do

  create_table "apartments", force: :cascade do |t|
    t.integer  "no_of_bedrooms"
    t.float    "rent"
    t.string   "apt_no"
    t.integer  "no_of_floors"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "message_id"
  end

  add_index "apartments", ["message_id"], name: "index_apartments_on_message_id"

  create_table "buildings", force: :cascade do |t|
    t.string   "address"
    t.integer  "no_of_floors"
    t.integer  "total_apts"
    t.float    "long"
    t.float    "lat"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "company_id"
    t.string   "apartment_id"
    t.string   "message_id"
  end

  add_index "buildings", ["apartment_id"], name: "index_buildings_on_apartment_id"
  add_index "buildings", ["company_id"], name: "index_buildings_on_company_id"
  add_index "buildings", ["message_id"], name: "index_buildings_on_message_id"

  create_table "companies", force: :cascade do |t|
    t.string   "building_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "companies", ["building_id"], name: "index_companies_on_building_id"

  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leases", force: :cascade do |t|
    t.string   "user_id"
    t.string   "apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "leases", ["apartment_id"], name: "index_leases_on_apartment_id"
  add_index "leases", ["user_id"], name: "index_leases_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.string   "to"
    t.string   "from"
    t.text     "body"
    t.string   "category"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user_id"
    t.string   "apartment_id"
    t.string   "buildings_id"
  end

  add_index "messages", ["apartment_id"], name: "index_messages_on_apartment_id"
  add_index "messages", ["buildings_id"], name: "index_messages_on_buildings_id"
  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "user_id"
    t.string   "phone_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "tenants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "message_id"
    t.string   "profile_id"
    t.string   "type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["message_id"], name: "index_users_on_message_id"
  add_index "users", ["profile_id"], name: "index_users_on_profile_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
