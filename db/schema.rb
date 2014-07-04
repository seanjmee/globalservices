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

ActiveRecord::Schema.define(version: 20140704145334) do

  create_table "comics", force: true do |t|
    t.string   "title"
    t.integer  "issue",         precision: 38, scale: 0
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_address"
  end

  create_table "projects", force: true do |t|
    t.string   "project_name"
    t.integer  "client_id",               precision: 38, scale: 0
    t.string   "project_type"
    t.string   "primary_location"
    t.string   "license_type"
    t.string   "complexity_score"
    t.string   "project_description"
    t.integer  "budget_days",             precision: 38, scale: 0
    t.string   "expense_policy"
    t.datetime "project_start"
    t.datetime "project_end"
    t.string   "vendors"
    t.string   "products"
    t.string   "services"
    t.integer  "estimated_server_count",  precision: 38, scale: 0
    t.integer  "estimated_desktop_count", precision: 38, scale: 0
    t.string   "account_manager"
    t.string   "project_manager"
    t.string   "technical_lead"
    t.string   "client_sponsor"
    t.string   "client_project_manager"
    t.string   "client_technical_lead"
    t.string   "project_status"
    t.string   "project_stage"
    t.text     "progress_summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comic_id",                precision: 38, scale: 0
  end

  add_index "projects", ["comic_id"], name: "index_projects_on_comic_id"

  create_table "users", force: true do |t|
    t.string   "email",                                           default: "", null: false
    t.string   "encrypted_password",                              default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          precision: 38, scale: 0, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "i_users_reset_password_token", unique: true

end
