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

ActiveRecord::Schema.define(version: 2019_02_21_085945) do

  create_table "commodities", force: :cascade do |t|
    t.integer "commodity_code"
    t.string "commodity_type_name"
    t.integer "commodity_type_code"
    t.string "name"
    t.string "unit"
    t.string "standart"
    t.float "purchase_price"
    t.float "selling_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commodity_inventories", force: :cascade do |t|
    t.integer "commodity_id"
    t.boolean "operate_type"
    t.integer "quantity"
    t.integer "current_inventory"
    t.float "freight"
    t.string "operator"
    t.integer "year"
    t.integer "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "job_number"
    t.string "name"
    t.boolean "sex"
    t.string "birth_date"
    t.integer "age"
    t.string "working_date"
    t.integer "working_years"
    t.json "worktype"
    t.json "duty"
    t.json "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trading_records", force: :cascade do |t|
    t.integer "commodity_id"
    t.integer "employee_id"
    t.integer "quantity"
    t.float "discount"
    t.float "discount_price"
    t.float "total_amount"
    t.string "operator"
    t.integer "year"
    t.integer "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "update_events", force: :cascade do |t|
    t.integer "event_id"
    t.string "table_name"
    t.string "field_name"
    t.string "field_old_value"
    t.string "field_new_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wages", force: :cascade do |t|
    t.integer "employee_id"
    t.float "gross_salary"
    t.float "gross_cash"
    t.float "gross_virtual_money"
    t.float "net_cash"
    t.float "net_virtual_money"
    t.float "accumulative_cash"
    t.float "accumulative_virtual_money"
    t.integer "year"
    t.integer "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
