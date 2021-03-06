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

ActiveRecord::Schema.define(version: 2019_03_26_204357) do

  create_table "lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trail_id"
    t.boolean "completed"
    t.integer "rating"
    t.text "review"
    t.index ["trail_id"], name: "index_lists_on_trail_id"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.text "directions"
    t.text "description"
    t.float "length"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "experience_level"
    t.string "location"
    t.text "profile"
  end

end
