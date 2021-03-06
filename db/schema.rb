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

ActiveRecord::Schema.define(version: 20160720055528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lesson_parts", force: :cascade do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lesson_id"
    t.index ["lesson_id"], name: "index_lesson_parts_on_lesson_id", using: :btree
    t.index ["position", "lesson_id"], name: "index_lesson_parts_on_position_and_lesson_id", unique: true, using: :btree
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position"], name: "index_lessons_on_position", unique: true, using: :btree
  end

  create_table "part_completions", force: :cascade do |t|
    t.integer  "student_id",     null: false
    t.integer  "lesson_part_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["lesson_part_id", "student_id"], name: "index_part_completions_on_lesson_part_id_and_student_id", unique: true, using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "teacher_id"
    t.index ["teacher_id"], name: "index_users_on_teacher_id", using: :btree
  end

  add_foreign_key "lesson_parts", "lessons"
  add_foreign_key "users", "teachers"
end
