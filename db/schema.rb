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

ActiveRecord::Schema.define(version: 2019_06_05_144426) do

  create_table "baskets", force: :cascade do |t|
    t.integer "basket_number"
    t.integer "par"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "disc_golfers", force: :cascade do |t|
    t.string "name"
    t.string "password"
  end

  create_table "visits", force: :cascade do |t|
    t.integer "disc_golfer_id"
    t.integer "course_id"
    t.index ["course_id"], name: "index_visits_on_course_id"
    t.index ["disc_golfer_id"], name: "index_visits_on_disc_golfer_id"
  end

end