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

ActiveRecord::Schema.define(version: 20160323164209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cheerups", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
  end

  add_index "cheerups", ["feeling_id"], name: "index_cheerups_on_feeling_id", using: :btree

  create_table "feelings", force: :cascade do |t|
    t.string "name"
    t.string "tag"
  end

  create_table "gifs", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
  end

  add_index "gifs", ["cheerup_id"], name: "index_gifs_on_cheerup_id", using: :btree
  add_index "gifs", ["feeling_id"], name: "index_gifs_on_feeling_id", using: :btree
  add_index "gifs", ["post_id"], name: "index_gifs_on_post_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string  "title"
    t.string  "body"
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
  end

  add_index "posts", ["cheerup_id"], name: "index_posts_on_cheerup_id", using: :btree
  add_index "posts", ["feeling_id"], name: "index_posts_on_feeling_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
  end

  add_index "quotes", ["cheerup_id"], name: "index_quotes_on_cheerup_id", using: :btree
  add_index "quotes", ["feeling_id"], name: "index_quotes_on_feeling_id", using: :btree
  add_index "quotes", ["post_id"], name: "index_quotes_on_post_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
  end

  add_index "tags", ["cheerup_id"], name: "index_tags_on_cheerup_id", using: :btree
  add_index "tags", ["feeling_id"], name: "index_tags_on_feeling_id", using: :btree
  add_index "tags", ["post_id"], name: "index_tags_on_post_id", using: :btree

  create_table "videos", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
  end

  add_index "videos", ["cheerup_id"], name: "index_videos_on_cheerup_id", using: :btree
  add_index "videos", ["feeling_id"], name: "index_videos_on_feeling_id", using: :btree
  add_index "videos", ["post_id"], name: "index_videos_on_post_id", using: :btree

  add_foreign_key "cheerups", "feelings"
  add_foreign_key "gifs", "cheerups"
  add_foreign_key "gifs", "feelings"
  add_foreign_key "gifs", "posts"
  add_foreign_key "posts", "cheerups"
  add_foreign_key "posts", "feelings"
  add_foreign_key "quotes", "cheerups"
  add_foreign_key "quotes", "feelings"
  add_foreign_key "quotes", "posts"
  add_foreign_key "tags", "cheerups"
  add_foreign_key "tags", "feelings"
  add_foreign_key "tags", "posts"
  add_foreign_key "videos", "cheerups"
  add_foreign_key "videos", "feelings"
  add_foreign_key "videos", "posts"
end
