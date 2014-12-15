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

ActiveRecord::Schema.define(version: 20141214230553) do

  create_table "apis", force: true do |t|
    t.text     "name"
    t.integer  "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apis_projects", id: false, force: true do |t|
    t.integer "project_id"
    t.integer "api_id"
  end

  create_table "containers", force: true do |t|
    t.text     "name"
    t.text     "ip"
    t.integer  "projects_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "containers", ["projects_id"], name: "index_containers_on_projects_id"

  create_table "hardwares", force: true do |t|
    t.integer  "width"
    t.integer  "height"
    t.integer  "ram"
    t.boolean  "gps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.text     "name"
    t.text     "url"
    t.datetime "created_at"
    t.integer  "hardwares_id"
    t.datetime "updated_at"
  end

  add_index "projects", ["hardwares_id"], name: "index_projects_on_hardwares_id"

end
