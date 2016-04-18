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

ActiveRecord::Schema.define(version: 20160418190116) do

  create_table "abrasf_desif_cities", force: :cascade do |t|
    t.string "name",            limit: 50
    t.string "federative_unit", limit: 2
  end

  create_table "abrasf_desif_city_tax_codes", force: :cascade do |t|
    t.integer  "abrasf_desif_city_id",                                                      null: false
    t.integer  "abrasf_desif_tax_code_id",                                                  null: false
    t.string   "city_tax_code",            limit: 20,                                       null: false
    t.decimal  "aliquot",                             precision: 4, scale: 2, default: 5.0, null: false
    t.date     "since",                                                                     null: false
    t.date     "expiry"
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
  end

  add_index "abrasf_desif_city_tax_codes", ["abrasf_desif_city_id", "city_tax_code"], name: "abrasf_desif_city_tax_codes_city_id_and_city_tax_code", unique: true
  add_index "abrasf_desif_city_tax_codes", ["abrasf_desif_city_id"], name: "index_abrasf_desif_city_tax_codes_on_abrasf_desif_city_id"
  add_index "abrasf_desif_city_tax_codes", ["abrasf_desif_tax_code_id"], name: "index_abrasf_desif_city_tax_codes_on_abrasf_desif_tax_code_id"
  add_index "abrasf_desif_city_tax_codes", ["city_tax_code"], name: "index_abrasf_desif_city_tax_codes_on_city_tax_code"

  create_table "abrasf_desif_service_items", force: :cascade do |t|
    t.string "description", null: false
  end

  create_table "abrasf_desif_tax_codes", force: :cascade do |t|
    t.string  "description",                  limit: 200
    t.integer "abrasf_desif_service_item_id"
  end

end
