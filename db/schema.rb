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

ActiveRecord::Schema.define(version: 20151219074235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "share_actions", force: :cascade do |t|
    t.integer  "share_id"
    t.float    "current_value"
    t.string   "week_change"
    t.string   "year_change"
    t.string   "trading_status"
    t.string   "trades"
    t.float    "value"
    t.string   "volume"
    t.float    "capitalisation"
    t.float    "open"
    t.float    "high"
    t.float    "low"
    t.float    "high_bid"
    t.float    "low_offer"
    t.string   "shares_issued"
    t.string   "gross_div_yield"
    t.float    "nta"
    t.float    "eps"
    t.string   "pe"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "share_actions", ["share_id"], name: "index_share_actions_on_share_id", using: :btree

  create_table "shares", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "code",            null: false
    t.string   "issued_by"
    t.string   "isin"
    t.string   "security_type"
    t.string   "sector"
    t.string   "website_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_shares", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "share_actions", "shares"
end
