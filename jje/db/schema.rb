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

ActiveRecord::Schema.define(version: 20170324185759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competes_ins", id: false, force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "tournament_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "contains", id: false, force: :cascade do |t|
    t.integer  "tournament_id", null: false
    t.integer  "problem_id",    null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "problem_keywords", id: false, force: :cascade do |t|
    t.integer "problems_id"
    t.integer "problem_id",  null: false
    t.string  "keyword",     null: false
    t.index ["problems_id"], name: "index_problem_keywords_on_problems_id", using: :btree
  end

  create_table "problem_tags", id: false, force: :cascade do |t|
    t.integer "problems_id"
    t.integer "problem_id",  null: false
    t.string  "tag",         null: false
    t.index ["problems_id"], name: "index_problem_tags_on_problems_id", using: :btree
  end

  create_table "problems", primary_key: "problem_id", force: :cascade do |t|
    t.string  "name"
    t.integer "score"
    t.text    "problem_description"
    t.string  "path"
  end

  create_table "tournament_languages", id: false, force: :cascade do |t|
    t.integer  "tournaments_id"
    t.integer  "tournament_id",  null: false
    t.string   "language",       null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["tournaments_id"], name: "index_tournament_languages_on_tournaments_id", using: :btree
  end

  create_table "tournaments", id: false, force: :cascade do |t|
    t.integer  "tournament_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.boolean  "checktime"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_submissions", id: false, force: :cascade do |t|
    t.datetime "timestamp",  null: false
    t.integer  "user_id",    null: false
    t.integer  "problem_id", null: false
    t.boolean  "solved"
    t.string   "language"
    t.decimal  "runtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "user_id", force: :cascade do |t|
    t.string   "university"
    t.integer  "score"
    t.string   "company"
    t.string   "display_name"
    t.string   "email"
    t.string   "hash"
    t.string   "salt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
