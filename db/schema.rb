# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_15_000023) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "users_profile_id", null: false
    t.bigint "organisations_profile_id", null: false
    t.float "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisations_profile_id"], name: "index_donations_on_organisations_profile_id"
    t.index ["users_profile_id"], name: "index_donations_on_users_profile_id"
  end

  create_table "enquiries", force: :cascade do |t|
    t.bigint "users_profile_id", null: false
    t.bigint "listing_id", null: false
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organisations_profile_id"
    t.string "email"
    t.string "name"
    t.index ["listing_id"], name: "index_enquiries_on_listing_id"
    t.index ["users_profile_id"], name: "index_enquiries_on_users_profile_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "location"
    t.float "price"
    t.string "breed"
    t.string "sex"
    t.string "animal_type"
    t.string "microchip_number"
    t.string "desexed_status"
    t.string "expected_size"
    t.string "vaccination_status"
    t.text "health_status"
    t.string "phone_number"
    t.string "email"
    t.text "description"
    t.text "vaccination_details"
    t.bigint "organisations_profile_id", null: false
    t.bigint "users_profile_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisations_profile_id"], name: "index_listings_on_organisations_profile_id"
    t.index ["users_profile_id"], name: "index_listings_on_users_profile_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organisations_profile_id"
    t.index ["email"], name: "index_organisations_on_email", unique: true
    t.index ["reset_password_token"], name: "index_organisations_on_reset_password_token", unique: true
  end

  create_table "organisations_profiles", force: :cascade do |t|
    t.string "organisation_name"
    t.string "contact_name"
    t.string "phone_number"
    t.string "address_1"
    t.text "bio"
    t.bigint "organisation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["organisation_id"], name: "index_organisations_profiles_on_organisation_id"
  end

  create_table "replies", force: :cascade do |t|
    t.bigint "users_profile_id", null: false
    t.bigint "organisations_profile_id", null: false
    t.text "message"
    t.bigint "listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_replies_on_listing_id"
    t.index ["organisations_profile_id"], name: "index_replies_on_organisations_profile_id"
    t.index ["users_profile_id"], name: "index_replies_on_users_profile_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "users_profile_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "address_1"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "dob"
    t.index ["user_id"], name: "index_users_profiles_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "donations", "organisations_profiles"
  add_foreign_key "donations", "users_profiles"
  add_foreign_key "enquiries", "listings"
  add_foreign_key "enquiries", "organisations_profiles"
  add_foreign_key "enquiries", "users_profiles"
  add_foreign_key "listings", "organisations_profiles"
  add_foreign_key "listings", "users_profiles"
  add_foreign_key "organisations", "organisations_profiles"
  add_foreign_key "organisations_profiles", "organisations"
  add_foreign_key "replies", "listings"
  add_foreign_key "replies", "organisations_profiles"
  add_foreign_key "replies", "users_profiles"
  add_foreign_key "users", "users_profiles"
  add_foreign_key "users_profiles", "users"
end
