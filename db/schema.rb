# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_31_074714) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "country_of_origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "name_of_the_phone"
    t.string "model_number"
    t.integer "mrp"
    t.string "selling_price"
    t.string "availability"
    t.string "status"
    t.string "image"
    t.string "imei_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_devices_on_brand_id"
  end

  create_table "specifications", force: :cascade do |t|
    t.bigint "device_id", null: false
    t.string "camera"
    t.string "processor"
    t.string "ram"
    t.string "storage"
    t.string "battery"
    t.string "os_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["device_id"], name: "index_specifications_on_device_id"
  end

  add_foreign_key "devices", "brands"
  add_foreign_key "specifications", "devices"
end
