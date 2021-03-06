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

ActiveRecord::Schema.define(version: 20160420210838) do

  create_table "enrollments", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "study_id"
    t.integer  "participant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "enrollments", ["participant_id"], name: "index_enrollments_on_participant_id"
  add_index "enrollments", ["site_id"], name: "index_enrollments_on_site_id"
  add_index "enrollments", ["study_id"], name: "index_enrollments_on_study_id"

  create_table "participants", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participating_sites", force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "study_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "participating_sites", ["site_id"], name: "index_participating_sites_on_site_id"
  add_index "participating_sites", ["study_id"], name: "index_participating_sites_on_study_id"

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studies", force: :cascade do |t|
    t.string   "title"
    t.string   "principal_investigator"
    t.boolean  "open",                   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

end
