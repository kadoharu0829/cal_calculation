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

ActiveRecord::Schema.define(version: 2021_06_19_144221) do

  create_table "foods", force: :cascade do |t|
    t.string "name", null: false
    t.integer "calorie", null: false
    t.float "protein", null: false
    t.float "lipid", null: false
    t.float "carbohydrate", null: false
    t.float "salt_equivalent", null: false
    t.string "image_name"
    t.integer "kind", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
