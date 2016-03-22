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

ActiveRecord::Schema.define(version: 20160321230638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheerups", force: :cascade do |t|
    t.string  "feeling_name"
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.integer "feeling_id"
  end

  add_index "cheerups", ["feeling_id"], name: "index_cheerups_on_feeling_id", using: :btree

  create_table "feelings", force: :cascade do |t|
    t.string "feeling_name"
  end

  create_table "gifs", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
  end

  add_index "gifs", ["feeling_id"], name: "index_gifs_on_feeling_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string  "feeling_name"
    t.string  "img_url"
    t.string  "title"
    t.string  "body"
    t.string  "data_type"
    t.integer "feeling_id"
  end

  add_index "posts", ["feeling_id"], name: "index_posts_on_feeling_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
  end

  add_index "quotes", ["feeling_id"], name: "index_quotes_on_feeling_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
  end

  add_index "videos", ["feeling_id"], name: "index_videos_on_feeling_id", using: :btree

end
