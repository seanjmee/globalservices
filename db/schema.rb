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

ActiveRecord::Schema.define(version: 20140614232234) do

  create_table "comics", force: true do |t|
    t.string   "title"
    t.integer  "issue",      precision: 38, scale: 0
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", primary_key: "country_id", force: true do |t|
    t.string  "country_name", limit: 40
    t.decimal "region_id"
  end

  create_table "departments", primary_key: "department_id", force: true do |t|
    t.string  "department_name", limit: 30,                         null: false
    t.integer "manager_id",      limit: 6,  precision: 6, scale: 0
    t.integer "location_id",     limit: 4,  precision: 4, scale: 0
  end

  add_index "departments", ["location_id"], name: "dept_location_ix"

  create_table "employees", primary_key: "employee_id", force: true do |t|
    t.string   "first_name",     limit: 20
    t.string   "last_name",      limit: 25,                         null: false
    t.string   "email",          limit: 25,                         null: false
    t.string   "phone_number",   limit: 20
    t.datetime "hire_date",                                         null: false
    t.string   "job_id",         limit: 10,                         null: false
    t.decimal  "salary",                    precision: 8, scale: 2
    t.decimal  "commission_pct",            precision: 2, scale: 2
    t.integer  "manager_id",     limit: 6,  precision: 6, scale: 0
    t.integer  "department_id",  limit: 4,  precision: 4, scale: 0
  end

  add_index "employees", ["department_id"], name: "emp_department_ix"
  add_index "employees", ["email"], name: "emp_email_uk", unique: true
  add_index "employees", ["job_id"], name: "emp_job_ix"
  add_index "employees", ["last_name", "first_name"], name: "emp_name_ix"
  add_index "employees", ["manager_id"], name: "emp_manager_ix"

  create_table "job_history", id: false, force: true do |t|
    t.integer  "employee_id",   limit: 6,  precision: 6, scale: 0, null: false
    t.datetime "start_date",                                       null: false
    t.datetime "end_date",                                         null: false
    t.string   "job_id",        limit: 10,                         null: false
    t.integer  "department_id", limit: 4,  precision: 4, scale: 0
  end

  add_index "job_history", ["department_id"], name: "jhist_department_ix"
  add_index "job_history", ["employee_id"], name: "jhist_employee_ix"
  add_index "job_history", ["job_id"], name: "jhist_job_ix"

  create_table "jobs", primary_key: "job_id", force: true do |t|
    t.string  "job_title",  limit: 35,                         null: false
    t.integer "min_salary", limit: 6,  precision: 6, scale: 0
    t.integer "max_salary", limit: 6,  precision: 6, scale: 0
  end

  create_table "locations", primary_key: "location_id", force: true do |t|
    t.string "street_address", limit: 40
    t.string "postal_code",    limit: 12
    t.string "city",           limit: 30, null: false
    t.string "state_province", limit: 25
    t.string "country_id",     limit: 2
  end

  add_index "locations", ["city"], name: "loc_city_ix"
  add_index "locations", ["country_id"], name: "loc_country_ix"
  add_index "locations", ["state_province"], name: "loc_state_province_ix"

  create_table "regions", primary_key: "region_id", force: true do |t|
    t.string "region_name", limit: 25
  end

  add_foreign_key "countries", "regions", primary_key: "region_id", name: "countr_reg_fk"

  add_foreign_key "departments", "employees", column: "manager_id", primary_key: "employee_id", name: "dept_mgr_fk"
  add_foreign_key "departments", "locations", primary_key: "location_id", name: "dept_loc_fk"

  add_foreign_key "employees", "departments", primary_key: "department_id", name: "emp_dept_fk"
  add_foreign_key "employees", "employees", column: "manager_id", primary_key: "employee_id", name: "emp_manager_fk"
  add_foreign_key "employees", "jobs", primary_key: "job_id", name: "emp_job_fk"

  add_foreign_key "job_history", "departments", primary_key: "department_id", name: "jhist_dept_fk"
  add_foreign_key "job_history", "employees", primary_key: "employee_id", name: "jhist_emp_fk"
  add_foreign_key "job_history", "jobs", primary_key: "job_id", name: "jhist_job_fk"

  add_foreign_key "locations", "countries", primary_key: "country_id", name: "loc_c_id_fk"

end
