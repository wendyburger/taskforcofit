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

ActiveRecord::Schema.define(version: 20160515130500) do

  create_table "daily_plans", force: :cascade do |t|
    t.float    "weight"
    t.date     "daily_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.float    "basal_metabolic"
    t.float    "activity_rate"
    t.integer  "suggest_metabolic_rate"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer  "workout_id"
    t.integer  "period"
    t.date     "exercise_time"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "daily_plan_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string   "food_name"
    t.float    "carbohydrate"
    t.float    "protein"
    t.float    "fat"
    t.float    "gram"
    t.float    "food_cal"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "per_serve"
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "food_id"
    t.float    "serve"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "meal_date"
    t.time     "meal_time"
    t.integer  "daily_plan_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "gender"
    t.date     "birth"
    t.float    "height"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_name"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workouts", force: :cascade do |t|
    t.string   "item"
    t.float    "workout_cal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
