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

ActiveRecord::Schema.define(version: 20150926190227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accountings", force: :cascade do |t|
    t.integer  "commodity_id"
    t.integer  "book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "company_id"
  end

  add_index "accountings", ["book_id"], name: "index_accountings_on_book_id", using: :btree
  add_index "accountings", ["commodity_id"], name: "index_accountings_on_commodity_id", using: :btree
  add_index "accountings", ["company_id"], name: "index_accountings_on_company_id", using: :btree

  create_table "book_commodities", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "commodity_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "book_commodities", ["book_id"], name: "index_book_commodities_on_book_id", using: :btree
  add_index "book_commodities", ["commodity_id"], name: "index_book_commodities_on_commodity_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commodities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accountings", "books"
  add_foreign_key "accountings", "commodities"
  add_foreign_key "accountings", "companies"
  add_foreign_key "book_commodities", "books"
  add_foreign_key "book_commodities", "commodities"
end
