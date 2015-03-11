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

ActiveRecord::Schema.define(version: 20150311055702) do

  create_table "admins", primary_key: "admin_id", force: :cascade do |t|
    t.string "admin_fname",    limit: 45
    t.string "admin_lname",    limit: 45
    t.string "admin_mobile",   limit: 45
    t.string "admin_username", limit: 45
    t.string "admin_password", limit: 45
  end

  create_table "cancellations", primary_key: "cancellation_id", force: :cascade do |t|
    t.string "cancellation_date", limit: 45
    t.string "deal_id",           limit: 45
  end

  create_table "categories", primary_key: "category_id", force: :cascade do |t|
    t.string "category_name", limit: 45
    t.string "category_desc", limit: 45
  end

  create_table "deals", primary_key: "deal_id", force: :cascade do |t|
    t.integer "quotation_id",  limit: 4
    t.integer "dealstatus_id", limit: 4
  end

  create_table "dealstatuses", primary_key: "dealstatus_id", force: :cascade do |t|
    t.string "dealstatus_desc", limit: 45
  end

  create_table "feedbacks", primary_key: "feedback_id", force: :cascade do |t|
    t.string  "feedback_message", limit: 45
    t.integer "client_id",        limit: 4
    t.integer "vendor_id",        limit: 4
  end

  create_table "items", primary_key: "item_id", force: :cascade do |t|
    t.string   "item_name",               limit: 45
    t.string   "item_desc",               limit: 45
    t.string   "subcategory_id",          limit: 45
    t.string   "item_image",              limit: 45
    t.string   "item_image_file_name",    limit: 255
    t.string   "item_image_content_type", limit: 255
    t.integer  "item_image_file_size",    limit: 4
    t.datetime "item_image_updated_at"
  end

  create_table "m1s", force: :cascade do |t|
    t.string   "uname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movetype_items", id: false, force: :cascade do |t|
    t.integer "movetype_id", limit: 4, null: false
    t.integer "item_id",     limit: 4, null: false
  end

  add_index "movetype_items", ["item_id"], name: "fk_movetype_item_2_idx", using: :btree
  add_index "movetype_items", ["movetype_id"], name: "fk_movetype_item_1_idx", using: :btree

  create_table "movetypes", primary_key: "movetype_id", force: :cascade do |t|
    t.string "movetype_name", limit: 45
    t.string "movetype_desc", limit: 45
  end

  create_table "quotations", primary_key: "quotation_id", force: :cascade do |t|
    t.datetime "quotation_date",               null: false
    t.string   "quotation_amount",  limit: 45
    t.string   "quotation_message", limit: 45
    t.integer  "vendor_id",         limit: 4
    t.string   "requirement_id",    limit: 45
  end

  create_table "registrations", primary_key: "registration_id", force: :cascade do |t|
    t.string "registration_fname",    limit: 45, null: false
    t.string "registration_lname",    limit: 45
    t.string "registration_email",    limit: 45, null: false
    t.string "registration_mobile",   limit: 45, null: false
    t.string "registration_landline", limit: 45
    t.string "registration_state",    limit: 45
    t.string "registration_district", limit: 45
    t.string "registration_taluka",   limit: 45
    t.string "registration_city",     limit: 45
    t.string "registration_address",  limit: 45
    t.string "registration_pincode",  limit: 45, null: false
    t.string "registration_username", limit: 45, null: false
    t.string "registration_password", limit: 45, null: false
    t.string "registration_type",     limit: 45, null: false
  end

  create_table "requirement_items", primary_key: "requirement_id", force: :cascade do |t|
    t.integer "item_id", limit: 4
  end

  create_table "requirements", primary_key: "requirement_id", force: :cascade do |t|
    t.string   "requirement_date",          limit: 45
    t.string   "requirement_from",          limit: 45
    t.string   "requirement_to",            limit: 45
    t.string   "requirement_lift",          limit: 1
    t.integer  "requirement_floor",         limit: 4
    t.string   "requirement_parking",       limit: 45
    t.string   "requirement_extra_service", limit: 150
    t.datetime "requirement_datetomove"
    t.integer  "client_id",                 limit: 4
  end

  create_table "subcategories", primary_key: "subcategory_id", force: :cascade do |t|
    t.string "subcategory_name", limit: 45
    t.string "subcategory_desc", limit: 45
    t.string "category_id",      limit: 45
  end

  add_foreign_key "movetype_items", "items", primary_key: "item_id", name: "fk_movetype_item_2"
  add_foreign_key "movetype_items", "movetypes", primary_key: "movetype_id", name: "fk_movetype_item_1"
end
