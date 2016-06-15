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

ActiveRecord::Schema.define(version: 20160615224608) do

  create_table "articles", force: :cascade do |t|
    t.string "title", limit: 255
    t.text   "body",  limit: 65535
  end

  create_table "children", force: :cascade do |t|
    t.string  "first_name",  limit: 255, null: false
    t.string  "middle_name", limit: 255
    t.string  "last_name",   limit: 255, null: false
    t.integer "grade_id",    limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "children", ["grade_id"], name: "index_children_on_grade_id", using: :btree
  add_index "children", ["user_id"], name: "fk_rails_a51d7cfb22", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string  "name",        limit: 255, null: false
    t.date    "start_date"
    t.date    "end_date"
    t.integer "semester_id", limit: 4
    t.integer "school_id",   limit: 4
  end

  add_index "courses", ["school_id"], name: "index_courses_on_school_id", using: :btree
  add_index "courses", ["semester_id"], name: "index_courses_on_semester_id", using: :btree

  create_table "enrollments", force: :cascade do |t|
    t.boolean "pass"
    t.integer "child_id",  limit: 4
    t.integer "course_id", limit: 4
  end

  add_index "enrollments", ["child_id"], name: "fk_rails_94d50345a5", using: :btree
  add_index "enrollments", ["course_id"], name: "fk_rails_2e119501f4", using: :btree

  create_table "grades", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  create_table "rich_rich_files", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rich_file_file_name",    limit: 255
    t.string   "rich_file_content_type", limit: 255
    t.integer  "rich_file_file_size",    limit: 4
    t.datetime "rich_file_updated_at"
    t.string   "owner_type",             limit: 255
    t.integer  "owner_id",               limit: 4
    t.text     "uri_cache",              limit: 65535
    t.string   "simplified_type",        limit: 255,   default: "file"
  end

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
  add_foreign_key "enrollments", "children"
  add_foreign_key "enrollments", "courses"
  add_foreign_key "schedules", "courses"
  add_foreign_key "schedules", "week_days"
end
