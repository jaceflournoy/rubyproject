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

ActiveRecord::Schema.define(version: 2018_11_13_203419) do

  create_table "cars", force: :cascade do |t|
    t.string "vin"
    t.string "color"
    t.string "make"
    t.string "model"
    t.decimal "wholesaleprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "phonenumber"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "loans", force: :cascade do |t|
    t.integer "type"
    t.decimal "interestrate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.decimal "totalprice"
    t.decimal "multiplier"
    t.integer "customer_id"
    t.integer "employee_id"
    t.boolean "sold"
    t.integer "car_id"
    t.integer "loan_id"
    t.decimal "wholesaleprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_quotes_on_car_id"
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
    t.index ["employee_id"], name: "index_quotes_on_employee_id"
    t.index ["loan_id"], name: "index_quotes_on_loan_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
