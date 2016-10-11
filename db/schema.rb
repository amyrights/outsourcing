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

ActiveRecord::Schema.define(version: 20161010163209) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "company_industries", force: :cascade do |t|
    t.integer  "company_profile_id"
    t.integer  "industry_list_id"
    t.integer  "sort_order"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "company_profiles", force: :cascade do |t|
    t.string   "headquarters_country_code"
    t.string   "headquarters_state_code"
    t.string   "headquarters_city"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "summary"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.integer  "year_founded"
    t.string   "classification",                   default: "Private", null: false
    t.string   "index_acquired_by_public_company", default: "No",      null: false
    t.string   "narrative"
    t.string   "note"
    t.string   "name"
    t.integer  "cpid"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "company_profile_id"
    t.string   "email"
    t.string   "title"
    t.string   "name"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "google"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "industry_lists", force: :cascade do |t|
    t.string   "name"
    t.string   "parent_id"
    t.integer  "pics"
    t.integer  "url_slug"
    t.string   "tree_print"
    t.string   "search_visible"
    t.integer  "child_count"
    t.string   "index_hierarchy_data"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.integer  "company_profile_id"
    t.string   "name"
    t.integer  "sort_order"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "role",                   default: "Author", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "websites", force: :cascade do |t|
    t.integer  "company_profile_id"
    t.string   "url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
