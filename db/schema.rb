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

ActiveRecord::Schema.define(version: 2019_06_11_221229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "debts", force: :cascade do |t|
    t.integer "payer_id"
    t.integer "ower_id"
    t.decimal "amount_paid", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_splits", force: :cascade do |t|
    t.integer "item_id"
    t.integer "user_id"
    t.integer "splitBetween"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "receipt_id"
    t.string "name"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.integer "payer_id"
    t.string "place_name"
    t.string "img_url"
    t.string "date", default: "N/A"
    t.decimal "subtotal", default: "0.0"
    t.decimal "tax", default: "0.0"
    t.decimal "tip", default: "0.0"
    t.decimal "total", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_receipts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "receipt_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "profile_url", default: "https://res.cloudinary.com/sungchan/image/upload/v1560829909/00-ELASTOFONT-STORE-READY_user-circle-512_bg2kgc.png"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
