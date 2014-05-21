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

ActiveRecord::Schema.define(version: 20140518234040) do

  create_table "administrators", force: true do |t|
    t.integer  "person_id"
    t.date     "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clerks", force: true do |t|
    t.integer  "person_id"
    t.date     "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colleges", force: true do |t|
    t.integer  "faculty_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.integer  "matriculation_validate_id"
    t.integer  "document_type_id"
    t.string   "document_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grade_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", force: true do |t|
    t.integer  "matriculation_course_id"
    t.float    "value"
    t.integer  "grade_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marital_statuses", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matricualtion_validates", force: true do |t|
    t.integer  "matriculation_id"
    t.string   "institution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculation_courses", force: true do |t|
    t.integer  "matriculation_id"
    t.integer  "package_id"
    t.date     "start_date"
    t.date     "end_date"
    t.float    "final_grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculation_validate_exams", force: true do |t|
    t.integer  "matriculation_validate"
    t.float    "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculation_validates", force: true do |t|
    t.integer  "matriculation_id"
    t.string   "institution"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matriculations", force: true do |t|
    t.integer  "pre_matriculation_id"
    t.date     "acceptance_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "packages", force: true do |t|
    t.integer  "teacher_id"
    t.integer  "schedule_id"
    t.integer  "room_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_types", force: true do |t|
    t.string   "name"
    t.float    "amount"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "matricualtion_id"
    t.integer  "payment_type_id"
    t.date     "payment_day"
    t.string   "receipt_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.integer  "user_id"
    t.string   "paternal_lastname"
    t.string   "maternal_lastname"
    t.string   "name"
    t.string   "dni"
    t.string   "address"
    t.string   "district"
    t.string   "province"
    t.string   "department"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.boolean  "sex"
    t.date     "birthday"
    t.string   "birthplace"
    t.integer  "marital_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permisssions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postgrade_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "postgrade_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postgrade_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_mariculation_communicatives", force: true do |t|
    t.integer  "pre_matriculation_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pre_matriculations", force: true do |t|
    t.integer  "person_id"
    t.integer  "curse_type_id"
    t.integer  "languaje_id"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", force: true do |t|
    t.integer  "teacher_attendance_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "days"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "week_days"
    t.integer  "number_of_sessions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_attendances", force: true do |t|
    t.integer  "matriculation_course_id"
    t.date     "attendance_date"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.integer  "person_id"
    t.date     "acceptance_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher_attendaces", force: true do |t|
    t.integer  "package_id"
    t.boolean  "state"
    t.time     "arrival_time"
    t.time     "dismissal_time"
    t.integer  "session_number"
    t.date     "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.integer  "person_id"
    t.date     "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unica_people", force: true do |t|
    t.integer  "person_id"
    t.integer  "college_id"
    t.integer  "semester"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "permission_id"
    t.string   "username"
    t.string   "password"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
