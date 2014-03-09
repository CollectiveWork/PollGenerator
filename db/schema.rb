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

ActiveRecord::Schema.define(version: 20140309151108) do

  create_table "answer_languages", force: true do |t|
    t.integer "answer_id"
    t.string  "text"
    t.string  "language_name"
  end

  create_table "answers", force: true do |t|
    t.integer "count",       default: 0
    t.integer "question_id"
  end

  create_table "pollers", force: true do |t|
    t.string   "ip"
    t.integer  "answer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_languages", force: true do |t|
    t.integer "question_id"
    t.string  "text"
    t.string  "language_name"
  end

  create_table "questions", force: true do |t|
    t.integer  "total_views", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
