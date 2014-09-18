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

ActiveRecord::Schema.define(version: 20140918034452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.integer  "party_id"
    t.string   "street"
    t.string   "number"
    t.string   "complement"
    t.string   "state"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["party_id"], name: "index_addresses_on_party_id", using: :btree

  create_table "coaches", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coaches", ["user_id"], name: "index_coaches_on_user_id", using: :btree

  create_table "companies", force: true do |t|
    t.string   "cnpj"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["party_id"], name: "index_companies_on_party_id", using: :btree

  create_table "parties", force: true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "phone"
    t.string   "webpage"
    t.string   "sex"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pupils", force: true do |t|
    t.integer  "user_id"
    t.decimal  "weight"
    t.decimal  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pupils", ["user_id"], name: "index_pupils_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "facebook"
    t.string   "twitter"
    t.integer  "party_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["party_id"], name: "index_users_on_party_id", using: :btree

end
