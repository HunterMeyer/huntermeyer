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

ActiveRecord::Schema.define(version: 20150117201813) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: true do |t|
    t.string   "email"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
  end

  create_table "experiences", force: true do |t|
    t.text     "company"
    t.text     "title"
    t.text     "url"
    t.text     "start_date"
    t.text     "end_date",    default: "Present"
    t.text     "description"
    t.integer  "ordinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.text     "title"
    t.text     "tags"
    t.text     "content"
    t.text     "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "demo_url"
    t.string   "repo_url"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ordinal"
  end

  create_table "users", force: true do |t|
    t.boolean  "admin"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "works", force: true do |t|
    t.text     "name"
    t.text     "caption"
    t.text     "position"
    t.text     "description"
    t.text     "url"
    t.text     "image_url"
    t.text     "repo_url"
    t.text     "twitter_id"
    t.text     "tags"
    t.integer  "ordinal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
