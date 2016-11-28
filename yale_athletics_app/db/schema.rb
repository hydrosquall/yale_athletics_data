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

ActiveRecord::Schema.define(version: 20161128202457) do

  create_table "high_schools", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.string   "sport"
    t.string   "season"
    t.string   "name"
    t.string   "college"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "city"
    t.string   "high_school"
    t.string   "region_home_town"
    t.string   "height"
    t.string   "name"
    t.string   "number"
    t.string   "pos"
    t.string   "region"
    t.string   "season"
    t.string   "wt"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "bio"
    t.string   "misc"
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
