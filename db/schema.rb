# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150125074128) do

  create_table "reports", force: :cascade do |t|
    t.integer  "attendance"
    t.integer  "lessonNum"
    t.integer  "pq1Score"
    t.integer  "pq2Score"
    t.integer  "q1Score"
    t.integer  "q2Score"
    t.integer  "q3Score"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reports", ["school_id"], name: "index_reports_on_school_id"

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.integer  "numStudents"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
