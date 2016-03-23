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
    t.integer "tag_id"
  end

  add_index "cheerups", ["feeling_id"], name: "index_cheerups_on_feeling_id", using: :btree
  add_index "cheerups", ["tag_id"], name: "index_cheerups_on_tag_id", using: :btree

  create_table "feelings", force: :cascade do |t|
    t.string  "name"
    t.string  "tag"
    t.integer "tag_id"
  end

  add_index "feelings", ["tag_id"], name: "index_feelings_on_tag_id", using: :btree

  create_table "gifs", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "gifs", ["cheerup_id"], name: "index_gifs_on_cheerup_id", using: :btree
  add_index "gifs", ["feeling_id"], name: "index_gifs_on_feeling_id", using: :btree
  add_index "gifs", ["post_id"], name: "index_gifs_on_post_id", using: :btree
  add_index "gifs", ["tag_id"], name: "index_gifs_on_tag_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string  "title"
    t.string  "body"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "tag_id"
  end

  add_index "posts", ["feeling_id"], name: "index_posts_on_feeling_id", using: :btree
  add_index "posts", ["tag_id"], name: "index_posts_on_tag_id", using: :btree

  create_table "quotes", force: :cascade do |t|
    t.string  "name"
    t.string  "img_url"
    t.string  "data_type"
    t.string  "tag"
    t.integer "feeling_id"
    t.integer "cheerup_id"
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "quotes", ["cheerup_id"], name: "index_quotes_on_cheerup_id", using: :btree
  add_index "quotes", ["feeling_id"], name: "index_quotes_on_feeling_id", using: :btree
  add_index "quotes", ["post_id"], name: "index_quotes_on_post_id", using: :btree
  add_index "quotes", ["tag_id"], name: "index_quotes_on_tag_id", using: :btree

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
    t.integer "tag_id"
  end

  add_index "videos", ["cheerup_id"], name: "index_videos_on_cheerup_id", using: :btree
  add_index "videos", ["feeling_id"], name: "index_videos_on_feeling_id", using: :btree
  add_index "videos", ["post_id"], name: "index_videos_on_post_id", using: :btree
  add_index "videos", ["tag_id"], name: "index_videos_on_tag_id", using: :btree

end
