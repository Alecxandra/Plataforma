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

ActiveRecord::Schema.define(version: 20140915190730) do

  create_table "announcements", force: true do |t|
    t.text     "texto"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "texto"
    t.integer  "announcement_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "nombre"
    t.date     "ano"
    t.integer  "trimestre"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "codigo"
  end

  create_table "courses_students", force: true do |t|
    t.integer "student_id"
    t.integer "course_id"
  end

  add_index "courses_students", ["student_id", "course_id"], name: "courses_students", unique: true, using: :btree

  create_table "homework_deliveries", force: true do |t|
    t.string   "file_path"
    t.integer  "homework_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "work"
    t.decimal  "nota",        precision: 10, scale: 0
  end

  create_table "homeworks", force: true do |t|
    t.text     "descripcion"
    t.datetime "fecha_asignacion"
    t.datetime "fecha_entrega"
    t.decimal  "nota",             precision: 10, scale: 0
    t.integer  "teacher_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "titulo"
  end

  create_table "students", force: true do |t|
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "codigo",           null: false
    t.string   "especialidad"
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers_universities", force: true do |t|
    t.integer "university_id"
    t.integer "teacher_id"
  end

  add_index "teachers_universities", ["university_id", "teacher_id"], name: "teachers_universities", unique: true, using: :btree

  create_table "universities", force: true do |t|
    t.string   "nombre"
    t.string   "ciudad"
    t.text     "direccion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
