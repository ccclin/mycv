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

ActiveRecord::Schema.define(version: 20150728053753) do

  create_table "colles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "context"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edubgs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "school_name"
    t.string   "major_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "infos", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "english_name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobbgs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "company_name"
    t.string   "work_name"
    t.integer  "years"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "myselves", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "context"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
