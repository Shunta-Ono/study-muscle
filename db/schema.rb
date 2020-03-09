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

ActiveRecord::Schema.define(version: 2020_03_08_140151) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image_id"
    t.integer "muscle_id"
    t.integer "note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muscle_id"], name: "index_images_on_muscle_id"
    t.index ["note_id"], name: "index_images_on_note_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.integer "genre_id"
    t.string "name", null: false
    t.string "innervation", null: false
    t.string "action", null: false
    t.text "information"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_muscles_on_genre_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "muscle_id"
    t.string "title"
    t.text "body"
    t.string "name"
    t.string "innervation"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muscle_id"], name: "index_notes_on_muscle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end