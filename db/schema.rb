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

ActiveRecord::Schema.define(version: 20170423113239) do

  create_table "architects", force: :cascade do |t|
    t.integer  "user_id",                        null: false
    t.string   "first_name",                     null: false
    t.string   "last_name",                      null: false
    t.string   "about"
    t.string   "site_url"
    t.integer  "status",          default: 0,    null: false
    t.integer  "alma_mater_id"
    t.integer  "graduation_year"
    t.integer  "company_id"
    t.string   "company_name"
    t.integer  "views",           default: 0,    null: false
    t.string   "slug",                           null: false
    t.boolean  "show_contests",   default: true
    t.boolean  "commentable",     default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["alma_mater_id"], name: "index_architects_on_alma_mater_id"
    t.index ["company_id"], name: "index_architects_on_company_id"
    t.index ["slug"], name: "index_architects_on_slug", unique: true
    t.index ["user_id"], name: "index_architects_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",                           null: false
    t.integer  "user_id"
    t.string   "logo"
    t.string   "site_url"
    t.string   "email"
    t.string   "office_location"
    t.text     "about",           default: ""
    t.integer  "status",          default: 0,    null: false
    t.integer  "views",           default: 0,    null: false
    t.boolean  "commentable",     default: true
    t.string   "slug",                           null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["slug"], name: "index_companies_on_slug", unique: true
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string   "name",                          null: false
    t.integer  "user_id"
    t.string   "logo"
    t.string   "site_url"
    t.string   "univ_location"
    t.text     "about",          default: ""
    t.integer  "status",         default: 0,    null: false
    t.integer  "views",          default: 0,    null: false
    t.integer  "parent_univ_id"
    t.boolean  "commentable",    default: true
    t.string   "slug",                          null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["parent_univ_id"], name: "index_universities_on_parent_univ_id"
    t.index ["slug"], name: "index_universities_on_slug", unique: true
    t.index ["user_id"], name: "index_universities_on_user_id"
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
    t.string   "nick",                                   null: false
    t.string   "avatar"
    t.string   "home_location"
    t.boolean  "blocked",                default: false
    t.boolean  "admin",                  default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["nick"], name: "index_users_on_nick", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
