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

ActiveRecord::Schema.define(version: 20131028020902) do

  create_table "admins", force: true do |t|
    t.string   "admin_name"
    t.string   "email_address"
    t.string   "admin_password"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "donations", force: true do |t|
    t.float    "amount"
    t.integer  "donor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "donors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "image"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["project_id"], name: "index_pictures_on_project_id", using: :btree

  create_table "projects", force: true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "end"
    t.text     "description"
    t.integer  "admin_id"
    t.integer  "project_id"
    t.integer  "picture_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["admin_id"], name: "index_projects_on_admin_id", using: :btree
  add_index "projects", ["picture_id"], name: "index_projects_on_picture_id", using: :btree
  add_index "projects", ["project_id"], name: "index_projects_on_project_id", using: :btree
  add_index "projects", ["video_id"], name: "index_projects_on_video_id", using: :btree

  create_table "texts", force: true do |t|
    t.string   "text_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "picture_file"
    t.string   "file_location"
    t.integer  "admin_id"
    t.string   "last_edited_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
