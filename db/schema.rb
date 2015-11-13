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

ActiveRecord::Schema.define(version: 20151113135441) do

  create_table "pimages", force: :cascade do |t|
    t.integer  "queue_image_id"
    t.integer  "iterate"
    t.string   "imageurl"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "queue_images", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "content_image",              null: false
    t.string   "style_image",                null: false
    t.string   "init_str",      default: ""
    t.integer  "status",        default: 0
    t.string   "result",        default: ""
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.time     "ptime"
    t.datetime "stime"
    t.datetime "ftime"
  end

end
