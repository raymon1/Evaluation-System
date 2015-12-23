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

ActiveRecord::Schema.define(version: 20151223113100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", primary_key: "admin_id", force: :cascade do |t|
  end

  create_table "answers", id: false, force: :cascade do |t|
    t.integer "student_id",  null: false
    t.integer "question_id", null: false
  end

  create_table "assignments", primary_key: "assignment_id", force: :cascade do |t|
    t.datetime "deadline"
  end

  create_table "courses", primary_key: "code", force: :cascade do |t|
    t.string  "name",          limit: 100, null: false
    t.integer "studying_year"
  end

  create_table "enrollins", id: false, force: :cascade do |t|
    t.string  "course_id",  limit: 10, null: false
    t.integer "student_id",            null: false
    t.string  "semester",   limit: 20
  end

  create_table "essay_questions", primary_key: "essay_id", force: :cascade do |t|
    t.text "answer"
  end

  create_table "feedbacks", primary_key: "feedback_id", force: :cascade do |t|
    t.integer "no_of_times_taken"
  end

  create_table "forms", primary_key: "form_id", force: :cascade do |t|
    t.string   "course_id",          limit: 10
    t.integer  "instructor_id"
    t.string   "title",              limit: 100
    t.integer  "no_of_questions"
    t.datetime "creation_time_date"
  end

  create_table "instructors", primary_key: "instructor_id", force: :cascade do |t|
    t.string "major", limit: 100
  end

  create_table "mcq_choices", primary_key: "mcq_id", force: :cascade do |t|
    t.integer "question_id"
    t.text    "choice"
  end

  create_table "mcqs", primary_key: "mcq_id", force: :cascade do |t|
    t.text "answer"
  end

  create_table "numerical_questions", primary_key: "numerical_question_id", force: :cascade do |t|
    t.float "answer"
  end

  create_table "phone_numbers", id: false, force: :cascade do |t|
    t.integer "college_id",            null: false
    t.string  "phone",      limit: 15, null: false
  end

  add_index "phone_numbers", ["phone"], name: "phone_numbers_phone_key", unique: true, using: :btree

  create_table "questions", primary_key: "question_id", force: :cascade do |t|
    t.integer "form_id"
    t.text    "question"
    t.integer "mark"
    t.text    "explanation"
    t.integer "difficulty"
    t.text    "hint"
    t.boolean "bonus"
    t.integer "hint_mark"
  end

  create_table "quizzes", primary_key: "quiz_id", force: :cascade do |t|
    t.float    "duration"
    t.float    "quiz_mark"
    t.float    "avg_mark"
    t.datetime "publish_date"
  end

  create_table "sheets", primary_key: "sheet_id", force: :cascade do |t|
    t.integer "sheet_number"
  end

  create_table "student_take_forms", id: false, force: :cascade do |t|
    t.integer  "form_id",         null: false
    t.integer  "student_id",      null: false
    t.datetime "submission_date"
    t.float    "student_mark"
  end

  create_table "students", primary_key: "student_id", force: :cascade do |t|
    t.integer "seat_no",                   null: false
    t.integer "section",       limit: 2
    t.integer "studying_year"
    t.string  "department",    limit: 100
  end

  add_index "students", ["seat_no"], name: "students_seat_no_key", unique: true, using: :btree

  create_table "teaches", id: false, force: :cascade do |t|
    t.string  "course_id",     limit: 10, null: false
    t.integer "instructor_id",            null: false
  end

  create_table "tfs", primary_key: "tf_id", force: :cascade do |t|
    t.boolean "answer"
  end

  create_table "users", primary_key: "college_id", force: :cascade do |t|
    t.date     "date_of_birth"
    t.string   "gender",                 limit: 7,    default: "male"
    t.string   "image",                  limit: 1000
    t.string   "national_id",            limit: 20
    t.string   "address",                limit: 1000
    t.string   "first_name",             limit: 30
    t.string   "middle_name",            limit: 30
    t.string   "last_name",              limit: 30
    t.string   "email",                               default: "",     null: false
    t.string   "encrypted_password",                  default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["national_id"], name: "users_national_id_key", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "admins", "users", column: "admin_id", primary_key: "college_id", name: "admins_admin_id_fkey"
  add_foreign_key "answers", "questions", primary_key: "question_id", name: "answers_question_id_fkey"
  add_foreign_key "answers", "students", primary_key: "student_id", name: "answers_student_id_fkey"
  add_foreign_key "assignments", "forms", column: "assignment_id", primary_key: "form_id", name: "assignments_assignment_id_fkey"
  add_foreign_key "enrollins", "courses", primary_key: "code", name: "enrollins_course_id_fkey"
  add_foreign_key "enrollins", "students", primary_key: "student_id", name: "enrollins_student_id_fkey"
  add_foreign_key "essay_questions", "questions", column: "essay_id", primary_key: "question_id", name: "essay_questions_essay_id_fkey"
  add_foreign_key "feedbacks", "forms", column: "feedback_id", primary_key: "form_id", name: "feedbacks_feedback_id_fkey"
  add_foreign_key "forms", "courses", primary_key: "code", name: "forms_course_id_fkey"
  add_foreign_key "forms", "instructors", primary_key: "instructor_id", name: "forms_instructor_id_fkey"
  add_foreign_key "instructors", "users", column: "instructor_id", primary_key: "college_id", name: "instructors_instructor_id_fkey"
  add_foreign_key "mcq_choices", "mcqs", column: "question_id", primary_key: "mcq_id", name: "mcq_choices_question_id_fkey"
  add_foreign_key "mcqs", "questions", column: "mcq_id", primary_key: "question_id", name: "mcqs_mcq_id_fkey"
  add_foreign_key "numerical_questions", "questions", column: "numerical_question_id", primary_key: "question_id", name: "numerical_questions_numerical_question_id_fkey"
  add_foreign_key "phone_numbers", "users", column: "college_id", primary_key: "college_id", name: "phone_numbers_college_id_fkey"
  add_foreign_key "questions", "forms", primary_key: "form_id", name: "questions_form_id_fkey"
  add_foreign_key "quizzes", "forms", column: "quiz_id", primary_key: "form_id", name: "quizzes_quiz_id_fkey"
  add_foreign_key "sheets", "forms", column: "sheet_id", primary_key: "form_id", name: "sheets_sheet_id_fkey"
  add_foreign_key "student_take_forms", "forms", primary_key: "form_id", name: "student_take_forms_form_id_fkey"
  add_foreign_key "student_take_forms", "students", primary_key: "student_id", name: "student_take_forms_student_id_fkey"
  add_foreign_key "students", "users", column: "student_id", primary_key: "college_id", name: "students_student_id_fkey"
  add_foreign_key "teaches", "courses", primary_key: "code", name: "teaches_course_id_fkey"
  add_foreign_key "teaches", "instructors", primary_key: "instructor_id", name: "teaches_instructor_id_fkey"
  add_foreign_key "tfs", "questions", column: "tf_id", primary_key: "question_id", name: "tfs_tf_id_fkey"
end
