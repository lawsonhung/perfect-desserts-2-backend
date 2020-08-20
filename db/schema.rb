# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_20_031754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dessert_types", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ice_cream_order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ice_cream_order_id"], name: "index_dessert_types_on_ice_cream_order_id"
    t.index ["user_id"], name: "index_dessert_types_on_user_id"
  end

  create_table "ice_cream_orders", force: :cascade do |t|
    t.string "flavor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
