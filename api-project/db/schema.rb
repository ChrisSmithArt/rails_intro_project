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

ActiveRecord::Schema[7.1].define(version: 2024_06_26_212904) do
  create_table "cyclings", force: :cascade do |t|
    t.string "name"
    t.string "roadlocation"
    t.boolean "twoway"
    t.decimal "length"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cycling_id"
    t.string "path_type"
  end

  create_table "park_assets", force: :cascade do |t|
    t.string "assetclass"
    t.string "assettype"
    t.string "assetsize"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "description"
    t.string "category"
    t.decimal "totalarea"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.integer "park_id"
  end

  create_table "walkways", force: :cascade do |t|
    t.decimal "length"
    t.decimal "width"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "walkway_id"
  end

end
