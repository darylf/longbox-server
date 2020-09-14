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

ActiveRecord::Schema.define(version: 2019_02_20_224159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_creators", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "creator_id"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_creators_on_book_id"
    t.index ["creator_id"], name: "index_book_creators_on_creator_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "issue"
    t.bigint "series_id"
    t.integer "book_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["series_id"], name: "index_books_on_series_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.bigint "publisher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_series_on_publisher_id"
  end

  add_foreign_key "book_creators", "books"
  add_foreign_key "book_creators", "creators"
  add_foreign_key "books", "series"
  add_foreign_key "series", "publishers"
end