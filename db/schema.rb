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

ActiveRecord::Schema.define(version: 20180502035254) do

  create_table "appelations", force: :cascade do |t|
    t.string "name"
    t.string "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appellations", force: :cascade do |t|
    t.string "name"
    t.string "tier"
    t.string "region"
    t.integer "country_id"
    t.integer "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_appellations_on_country_id"
    t.index ["producer_id"], name: "index_appellations_on_producer_id"
  end

  create_table "appellations_varietals", id: false, force: :cascade do |t|
    t.integer "appellation_id", null: false
    t.integer "varietal_id", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.integer "established"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varietals", force: :cascade do |t|
    t.string "name"
    t.string "country_of_origin"
    t.integer "appellation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appellation_id"], name: "index_varietals_on_appellation_id"
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "vintage"
    t.string "category"
    t.float "price"
    t.integer "producer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["producer_id"], name: "index_wines_on_producer_id"
  end

end
