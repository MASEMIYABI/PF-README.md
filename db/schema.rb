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

ActiveRecord::Schema.define(version: 2021_09_21_101041) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image_id"
    t.string "address"
    t.text "description"
    t.string "phone_number"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "customer_id", null: false
    t.string "card_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.integer "item_id"
    t.integer "customer_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number", null: false
    t.integer "subject", default: 0, null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "phone_number"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name"
    t.string "image_id"
    t.text "description"
    t.integer "price"
    t.boolean "is_stopped"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "item_id"
    t.integer "order_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "total_payment"
    t.integer "payment_method", default: 0
    t.integer "status", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produst_comments", force: :cascade do |t|
    t.integer "admin_id"
    t.integer "customer_id", null: false
    t.float "rate", default: 0.0, null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "evaluation"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "time"
    t.datetime "date"
    t.integer "customer_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "order_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.string "address"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phonenumber"
    t.float "evaluation"
  end

end
