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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111102230812) do

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.integer  "author_id"
    t.string   "year"
    t.integer  "tracks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audio_files", :force => true do |t|
    t.string   "title"
    t.integer  "album_id"
    t.integer  "track_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", :force => true do |t|
    t.string   "title"
    t.integer  "author_id"
    t.text     "plot"
    t.string   "language"
    t.string   "isbn"
    t.integer  "editor_id"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directors", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "editors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "films", :force => true do |t|
    t.string   "title"
    t.integer  "director_id"
    t.text     "storyline"
    t.string   "language"
    t.integer  "producer_id"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manufactorers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "operating_systems", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producers", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "support_id"
    t.integer  "genre_id"
    t.integer  "rating"
    t.integer  "detail_id"
    t.string   "detail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", :force => true do |t|
    t.string   "name"
    t.integer  "manufactorer_id"
    t.integer  "operating_system_id"
    t.text     "description"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supports", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tv_serie_episodes", :force => true do |t|
    t.string   "title"
    t.integer  "tv_serie_id"
    t.integer  "number"
    t.integer  "season"
    t.text     "plot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tv_series", :force => true do |t|
    t.string   "title"
    t.integer  "director_id"
    t.text     "storyline"
    t.integer  "seasons"
    t.string   "language"
    t.integer  "producer_id"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
