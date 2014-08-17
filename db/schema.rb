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

ActiveRecord::Schema.define(version: 20140817180823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "field_enumerators", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "field_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "field_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "field_units", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fields", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "byte_pos"
    t.integer  "bit_pos"
    t.integer  "length"
    t.integer  "type"
    t.float    "scaling"
    t.integer  "offset"
    t.integer  "units"
    t.float    "min_value"
    t.float    "max_value"
    t.string   "signalk_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parameter_groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "pgn"
    t.integer  "priority"
    t.integer  "default_rate"
    t.integer  "database_version"
    t.integer  "pgn_category_id"
    t.integer  "pgn_type_id"
    t.integer  "size"
    t.integer  "repeating_fields"
    t.boolean  "is_known"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pgn_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pgn_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
