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

ActiveRecord::Schema.define(version: 20160607183106) do

  create_table "children", force: :cascade do |t|
    t.string  "first_name",  limit: 255, null: false
    t.string  "middle_name", limit: 255
    t.string  "last_name",   limit: 255, null: false
    t.integer "grade_id",    limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "children", ["grade_id"], name: "index_children_on_grade_id", using: :btree
  add_index "children", ["user_id"], name: "fk_rails_a51d7cfb22", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string  "name",        limit: 255, null: false
    t.date    "start_date"
    t.date    "end_date"
    t.integer "semester_id", limit: 4
    t.integer "school_id",   limit: 4
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id", using: :btree
  add_index "courses", ["semester_id"], name: "index_courses_on_semester_id", using: :btree

  create_table "grades", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "gradings", force: :cascade do |t|
    t.boolean "pass"
    t.integer "child_id",  limit: 4
    t.integer "course_id", limit: 4
  end

  add_index "gradings", ["child_id"], name: "fk_rails_5d35bca3cd", using: :btree
  add_index "gradings", ["course_id"], name: "fk_rails_8a6dcfe307", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.time    "start_time"
    t.time    "end_time"
    t.integer "week_day_id", limit: 4
    t.integer "course_id",   limit: 4
  end

  add_index "schedules", ["course_id"], name: "fk_rails_c84d5ee2fd", using: :btree
  add_index "schedules", ["week_day_id"], name: "fk_rails_16cf0f1c55", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string "name",        limit: 255
    t.string "street",      limit: 255
    t.string "city",        limit: 255
    t.string "state",       limit: 255
    t.string "postal_code", limit: 255
  end

  create_table "semesters", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "first_name",             limit: 255,              null: false
    t.string   "middle_name",            limit: 255
    t.string   "last_name",              limit: 255,              null: false
    t.string   "phone_number",           limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "week_days", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  add_foreign_key "children", "grades"
  add_foreign_key "children", "users"
  add_foreign_key "courses", "schools"
  add_foreign_key "courses", "semesters"
  add_foreign_key "gradings", "children"
  add_foreign_key "gradings", "courses"
  add_foreign_key "schedules", "courses"
  add_foreign_key "schedules", "week_days"
end
