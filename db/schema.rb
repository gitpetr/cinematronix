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

ActiveRecord::Schema.define(version: 20180207060053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.string "seat"
    t.bigint "movie_session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_session_id"], name: "index_bookings_on_movie_session_id"
  end

  create_table "movie_sessions", force: :cascade do |t|
    t.bigint "movie_id"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_sessions_on_movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recensios", force: :cascade do |t|
    t.string "critic_name"
    t.string "critic_email"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "movie_id"
    t.index ["movie_id"], name: "index_recensios_on_movie_id"
  end

  add_foreign_key "bookings", "movie_sessions"
  add_foreign_key "movie_sessions", "movies"
  add_foreign_key "recensios", "movies"
end
