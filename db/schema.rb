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

ActiveRecord::Schema.define(version: 2018_08_21_130413) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tags", array: true
    t.string "locality"
    t.bigint "district_id"
    t.index ["code"], name: "index_areas_on_code", unique: true
    t.index ["district_id"], name: "index_areas_on_district_id"
  end

  create_table "camp_members", force: :cascade do |t|
    t.bigint "relief_camp_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relief_camp_id"], name: "index_camp_members_on_relief_camp_id"
    t.index ["user_id"], name: "index_camp_members_on_user_id"
  end

  create_table "districts", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.string "local_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_districts_on_code", unique: true
    t.index ["name"], name: "index_districts_on_name"
  end

  create_table "goods_commitments", force: :cascade do |t|
    t.bigint "user_id"
    t.boolean "verified"
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.boolean "active"
    t.datetime "available_from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goods_commitments_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.bigint "item_category_id"
    t.bigint "item_type_id"
    t.bigint "item_subtype_id"
    t.bigint "item_unit_id"
    t.float "quantity"
    t.bigint "area_id"
    t.float "latitude"
    t.float "longitude"
    t.text "address"
    t.float "initial_quantity"
    t.float "available_quantity"
    t.string "source"
    t.integer "volunteer_id"
    t.string "contact_number"
    t.string "contact_name"
    t.datetime "available_from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "goods_commitment_id"
    t.index ["area_id"], name: "index_inventories_on_area_id"
    t.index ["goods_commitment_id"], name: "index_inventories_on_goods_commitment_id"
    t.index ["item_category_id"], name: "index_inventories_on_item_category_id"
    t.index ["item_subtype_id"], name: "index_inventories_on_item_subtype_id"
    t.index ["item_type_id"], name: "index_inventories_on_item_type_id"
    t.index ["item_unit_id"], name: "index_inventories_on_item_unit_id"
  end

  create_table "item_categories", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_item_categories_on_code", unique: true
  end

  create_table "item_conditions", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_item_conditions_on_code", unique: true
  end

  create_table "item_subtypes", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.bigint "item_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_item_subtypes_on_code", unique: true
    t.index ["item_type_id"], name: "index_item_subtypes_on_item_type_id"
  end

  create_table "item_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_item_types_on_code", unique: true
  end

  create_table "item_units", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_item_units_on_code", unique: true
  end

  create_table "mode_of_transports", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_mode_of_transports_on_code", unique: true
  end

  create_table "refugees", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "location"
    t.text "address"
    t.string "phone_number"
    t.string "whatsapp_number"
    t.string "email"
    t.bigint "relief_camp_id"
    t.string "contact1"
    t.string "contact2"
    t.string "contact3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["relief_camp_id"], name: "index_refugees_on_relief_camp_id"
  end

  create_table "relief_camps", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "coordinator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.text "address"
    t.string "phone_number"
    t.string "whatsapp_number"
    t.string "email"
    t.string "contact_person"
    t.bigint "district_id"
    t.string "code"
    t.string "location"
    t.bigint "area_id"
    t.index ["area_id"], name: "index_relief_camps_on_area_id"
    t.index ["code"], name: "index_relief_camps_on_code", unique: true
    t.index ["coordinator_id"], name: "index_relief_camps_on_coordinator_id"
    t.index ["district_id"], name: "index_relief_camps_on_district_id"
  end

  create_table "required_items", force: :cascade do |t|
    t.bigint "requirement_id"
    t.bigint "item_category_id"
    t.bigint "item_type_id"
    t.bigint "item_subtype_id"
    t.bigint "item_unit_id"
    t.bigint "item_condition_id"
    t.float "quantity_requested"
    t.float "quantity_provided"
    t.float "quantity_needed"
    t.string "status"
    t.string "remark"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_category_id"], name: "index_required_items_on_item_category_id"
    t.index ["item_condition_id"], name: "index_required_items_on_item_condition_id"
    t.index ["item_subtype_id"], name: "index_required_items_on_item_subtype_id"
    t.index ["item_type_id"], name: "index_required_items_on_item_type_id"
    t.index ["item_unit_id"], name: "index_required_items_on_item_unit_id"
    t.index ["requirement_id"], name: "index_required_items_on_requirement_id"
  end

  create_table "requirements", force: :cascade do |t|
    t.bigint "relief_camp_id"
    t.bigint "area_id"
    t.bigint "user_id"
    t.datetime "requested_at"
    t.string "requester"
    t.string "request_mode"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_requirements_on_area_id"
    t.index ["relief_camp_id"], name: "index_requirements_on_relief_camp_id"
    t.index ["user_id"], name: "index_requirements_on_user_id"
  end

  create_table "shipped_items", force: :cascade do |t|
    t.bigint "requirement_id"
    t.bigint "item_category_id"
    t.bigint "item_type_id"
    t.bigint "item_subtype_id"
    t.bigint "item_unit_id"
    t.float "quantity"
    t.string "remark"
    t.bigint "source_id"
    t.bigint "destination_id"
    t.bigint "relief_camp_id"
    t.string "mode_of_transport"
    t.bigint "current_location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["current_location_id"], name: "index_shipped_items_on_current_location_id"
    t.index ["destination_id"], name: "index_shipped_items_on_destination_id"
    t.index ["item_category_id"], name: "index_shipped_items_on_item_category_id"
    t.index ["item_subtype_id"], name: "index_shipped_items_on_item_subtype_id"
    t.index ["item_type_id"], name: "index_shipped_items_on_item_type_id"
    t.index ["item_unit_id"], name: "index_shipped_items_on_item_unit_id"
    t.index ["relief_camp_id"], name: "index_shipped_items_on_relief_camp_id"
    t.index ["requirement_id"], name: "index_shipped_items_on_requirement_id"
    t.index ["source_id"], name: "index_shipped_items_on_source_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.string "location"
    t.text "address"
    t.string "phone_number"
    t.string "whatsapp_number"
    t.bigint "relief_camp_id"
    t.string "user_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["relief_camp_id"], name: "index_users_on_relief_camp_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "areas", "districts"
  add_foreign_key "camp_members", "relief_camps"
  add_foreign_key "camp_members", "users"
  add_foreign_key "goods_commitments", "users"
  add_foreign_key "inventories", "areas"
  add_foreign_key "inventories", "goods_commitments"
  add_foreign_key "inventories", "item_categories"
  add_foreign_key "inventories", "item_subtypes"
  add_foreign_key "inventories", "item_types"
  add_foreign_key "inventories", "item_units"
  add_foreign_key "item_subtypes", "item_types"
  add_foreign_key "refugees", "relief_camps"
  add_foreign_key "relief_camps", "areas"
  add_foreign_key "relief_camps", "districts"
  add_foreign_key "required_items", "item_categories"
  add_foreign_key "required_items", "item_conditions"
  add_foreign_key "required_items", "item_subtypes"
  add_foreign_key "required_items", "item_types"
  add_foreign_key "required_items", "item_units"
  add_foreign_key "required_items", "requirements"
  add_foreign_key "requirements", "areas"
  add_foreign_key "requirements", "relief_camps"
  add_foreign_key "requirements", "users"
  add_foreign_key "shipped_items", "areas", column: "current_location_id"
  add_foreign_key "shipped_items", "areas", column: "destination_id"
  add_foreign_key "shipped_items", "areas", column: "source_id"
  add_foreign_key "shipped_items", "item_categories"
  add_foreign_key "shipped_items", "item_subtypes"
  add_foreign_key "shipped_items", "item_types"
  add_foreign_key "shipped_items", "item_units"
  add_foreign_key "shipped_items", "relief_camps"
  add_foreign_key "shipped_items", "requirements"
end
