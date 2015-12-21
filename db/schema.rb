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

ActiveRecord::Schema.define(version: 20151221151457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", primary_key: "adminid", force: :cascade do |t|
  end

  create_table "answers", id: false, force: :cascade do |t|
    t.integer "studentid",  null: false
    t.integer "questionid", null: false
  end

  create_table "assignments", primary_key: "assignmentid", force: :cascade do |t|
    t.datetime "deadline"
  end

  create_table "courses", primary_key: "code", force: :cascade do |t|
    t.string  "name",         limit: 100, null: false
    t.integer "studyingyear"
  end

  create_table "enrollins", id: false, force: :cascade do |t|
    t.string  "courseid",  limit: 10, null: false
    t.integer "studentid",            null: false
    t.string  "semester",  limit: 20, null: false
  end

  create_table "essay_questions", primary_key: "essayid", force: :cascade do |t|
    t.text "answer"
  end

  create_table "feedbacks", primary_key: "feedbackid", force: :cascade do |t|
    t.integer "no_of_times_taken"
  end

  create_table "forms", primary_key: "formid", force: :cascade do |t|
    t.string   "courseid",      limit: 10
    t.integer  "instructorid"
    t.string   "title",         limit: 100
    t.integer  "no0fquestions"
    t.datetime "timeanddate"
  end

  create_table "instructors", primary_key: "instructorid", force: :cascade do |t|
    t.string "major", limit: 100
  end

  create_table "mcq_choices", primary_key: "mcqid", force: :cascade do |t|
    t.text "choice"
  end

  create_table "mcqs", primary_key: "mcqid", force: :cascade do |t|
    t.text "answer"
  end

  create_table "numerical_questions", primary_key: "numericalquestionid", force: :cascade do |t|
    t.float "answer"
  end

  create_table "phone_numbers", id: false, force: :cascade do |t|
    t.integer "collegeid",            null: false
    t.string  "phone",     limit: 15, null: false
  end

  add_index "phone_numbers", ["phone"], name: "phone_numbers_phone_key", unique: true, using: :btree

  create_table "questions", primary_key: "questionid", force: :cascade do |t|
    t.integer "formid"
    t.text    "question"
    t.integer "mark"
    t.text    "explanation"
    t.integer "difficulty"
    t.text    "hint"
    t.boolean "bonus"
    t.integer "hintmark"
  end

  create_table "quizzes", primary_key: "quizid", force: :cascade do |t|
    t.float    "duration"
    t.float    "quizmark"
    t.float    "avgmark"
    t.datetime "publishdate"
  end

  create_table "sheets", primary_key: "sheetid", force: :cascade do |t|
    t.integer "sheetno"
  end

  create_table "student_take_forms", id: false, force: :cascade do |t|
    t.integer  "formid",         null: false
    t.integer  "studentid",      null: false
    t.datetime "submissiondate"
    t.float    "studentmark"
  end

  create_table "students", primary_key: "studentid", force: :cascade do |t|
    t.integer "seatno",                   null: false
    t.integer "section",      limit: 2
    t.integer "studyingyear"
    t.string  "department",   limit: 100
  end

  add_index "students", ["seatno"], name: "students_seatno_key", unique: true, using: :btree

  create_table "teaches", id: false, force: :cascade do |t|
    t.string  "courseid",     limit: 10, null: false
    t.integer "instructorid",            null: false
  end

  create_table "tfs", primary_key: "tfid", force: :cascade do |t|
    t.boolean "answer"
  end

  create_table "users", primary_key: "collegeid", force: :cascade do |t|
    t.date     "dateofbirth"
    t.string   "gender",                 limit: 7,    default: "male"
    t.string   "image",                  limit: 1000
    t.string   "nationalid",             limit: 20
    t.string   "address",                limit: 1000
    t.string   "firstname",              limit: 30
    t.string   "middlename",             limit: 30
    t.string   "lastname",               limit: 30
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
  add_index "users", ["nationalid"], name: "users_nationalid_key", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "admins", "users", column: "adminid", primary_key: "collegeid", name: "admins_adminid_fkey"
  add_foreign_key "answers", "questions", column: "questionid", primary_key: "questionid", name: "answers_questionid_fkey"
  add_foreign_key "answers", "students", column: "studentid", primary_key: "studentid", name: "answers_studentid_fkey"
  add_foreign_key "assignments", "forms", column: "assignmentid", primary_key: "formid", name: "assignments_assignmentid_fkey"
  add_foreign_key "enrollins", "courses", column: "courseid", primary_key: "code", name: "enrollins_courseid_fkey"
  add_foreign_key "enrollins", "students", column: "studentid", primary_key: "studentid", name: "enrollins_studentid_fkey"
  add_foreign_key "essay_questions", "questions", column: "essayid", primary_key: "questionid", name: "essay_questions_essayid_fkey"
  add_foreign_key "feedbacks", "forms", column: "feedbackid", primary_key: "formid", name: "feedbacks_feedbackid_fkey"
  add_foreign_key "forms", "courses", column: "courseid", primary_key: "code", name: "forms_courseid_fkey"
  add_foreign_key "forms", "instructors", column: "instructorid", primary_key: "instructorid", name: "forms_instructorid_fkey"
  add_foreign_key "instructors", "users", column: "instructorid", primary_key: "collegeid", name: "instructors_instructorid_fkey"
  add_foreign_key "mcqs", "questions", column: "mcqid", primary_key: "questionid", name: "mcqs_mcqid_fkey"
  add_foreign_key "numerical_questions", "questions", column: "numericalquestionid", primary_key: "questionid", name: "numerical_questions_numericalquestionid_fkey"
  add_foreign_key "phone_numbers", "users", column: "collegeid", primary_key: "collegeid", name: "phone_numbers_collegeid_fkey"
  add_foreign_key "questions", "forms", column: "formid", primary_key: "formid", name: "questions_formid_fkey"
  add_foreign_key "quizzes", "forms", column: "quizid", primary_key: "formid", name: "quizzes_quizid_fkey"
  add_foreign_key "sheets", "forms", column: "sheetid", primary_key: "formid", name: "sheets_sheetid_fkey"
  add_foreign_key "student_take_forms", "forms", column: "formid", primary_key: "formid", name: "student_take_forms_formid_fkey"
  add_foreign_key "student_take_forms", "students", column: "studentid", primary_key: "studentid", name: "student_take_forms_studentid_fkey"
  add_foreign_key "students", "users", column: "studentid", primary_key: "collegeid", name: "students_studentid_fkey"
  add_foreign_key "teaches", "courses", column: "courseid", primary_key: "code", name: "teaches_courseid_fkey"
  add_foreign_key "teaches", "instructors", column: "instructorid", primary_key: "instructorid", name: "teaches_instructorid_fkey"
  add_foreign_key "tfs", "questions", column: "tfid", primary_key: "questionid", name: "tfs_tfid_fkey"
end
