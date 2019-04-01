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

ActiveRecord::Schema.define(version: 2019_03_29_125910) do

  create_table "calculation_ranges", force: :cascade do |t|
    t.string "name"
    t.decimal "value"
    t.integer "insurance_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_program_id"], name: "index_calculation_ranges_on_insurance_program_id"
  end

  create_table "field_classes", force: :cascade do |t|
    t.string "name"
    t.integer "insurance_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_program_id"], name: "index_field_classes_on_insurance_program_id"
  end

  create_table "financial_institutions", force: :cascade do |t|
    t.string "name"
    t.decimal "apr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "insurance_programs", force: :cascade do |t|
    t.string "name"
    t.decimal "broker_fee"
    t.decimal "inspection_fee"
    t.decimal "surplus_fee"
    t.decimal "surplus_tax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "limits", force: :cascade do |t|
    t.string "name"
    t.integer "insurance_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_program_id"], name: "index_limits_on_insurance_program_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "apr"
    t.integer "insurance_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insurance_program_id"], name: "index_names_on_insurance_program_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
