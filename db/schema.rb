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

ActiveRecord::Schema.define(version: 2022_08_11_005701) do

  create_table "categories", force: :cascade do |t|
    t.string "category"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "url"
  end

  create_table "places_reviews", force: :cascade do |t|
    t.string "title"
    t.string "user"
    t.text "body"
    t.integer "rating"
    t.integer "places_to_go_id"
  end

  create_table "places_to_gos", force: :cascade do |t|
    t.string "place"
    t.integer "location_id"
  end

  create_table "things_reviews", force: :cascade do |t|
    t.string "title"
    t.string "user"
    t.text "body"
    t.integer "rating"
    t.integer "things_to_do_id"
  end

  create_table "things_to_dos", force: :cascade do |t|
    t.string "activity"
    t.integer "location_id"
    t.integer "category_id"
  end

end
