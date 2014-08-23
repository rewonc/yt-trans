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

ActiveRecord::Schema.define(version: 20140823163022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: true do |t|
    t.string   "category"
    t.string   "content"
    t.integer  "votes"
    t.integer  "snippet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["snippet_id"], name: "index_comments_on_snippet_id", using: :btree

  create_table "snippets", force: true do |t|
    t.float    "starttime"
    t.float    "endtime"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "snippets", ["video_id"], name: "index_snippets_on_video_id", using: :btree

  create_table "videos", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
    t.string   "title"
    t.string   "description"
    t.integer  "views"
    t.string   "language"
    t.string   "code"
    t.string   "tags"
    t.integer  "duration"
    t.integer  "votes"
    t.string   "durationString"
    t.integer  "percent"
  end

  add_index "videos", ["name"], name: "index_videos_on_name", unique: true, using: :btree

end
