# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 2018_04_12_162036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.text "title"
    t.text "author"
    t.text "subject"
    t.text "isbn"
    t.text "status", default: "Active"
    t.text "url"
    t.text "image_url"
    t.integer "ordinal"
    t.integer "clicks", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["status"], name: "index_books_on_status"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "email"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "educations", force: :cascade do |t|
    t.text "school"
    t.text "concentration"
    t.text "url"
    t.text "start_date"
    t.text "end_date"
    t.text "city"
    t.text "state"
    t.text "description"
    t.integer "ordinal"
    t.boolean "visible"
    t.text "highlights"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.text "company"
    t.text "title"
    t.text "url"
    t.text "start_date"
    t.text "end_date"
    t.text "long_description"
    t.text "short_description"
    t.text "highlights"
    t.text "city"
    t.text "state"
    t.boolean "visible"
    t.integer "ordinal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "demo_url"
    t.string "repo_url"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ordinal"
  end

  create_table "skills", force: :cascade do |t|
    t.text "name"
    t.integer "width"
    t.integer "ordinal"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "works", force: :cascade do |t|
    t.text "name"
    t.text "caption"
    t.text "position"
    t.text "description"
    t.text "url"
    t.text "image_url"
    t.text "repo_url"
    t.text "twitter_id"
    t.text "tags"
    t.integer "ordinal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "visible", default: true
  end

end
