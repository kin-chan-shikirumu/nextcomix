# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_03_19_160335) do
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
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
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

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "reader_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rate"
    t.integer "vote_volume"
    t.index ["reader_id"], name: "index_comments_on_reader_id"
    t.index ["tweet_id"], name: "index_comments_on_tweet_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "tweet_id", null: false
    t.integer "reader_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reader_id"], name: "index_likes_on_reader_id"
    t.index ["tweet_id"], name: "index_likes_on_tweet_id"
  end

  create_table "readers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_readers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_readers_on_reset_password_token", unique: true
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweet_tag_relations", force: :cascade do |t|
    t.integer "tweet_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tweet_tag_relations_on_tag_id"
    t.index ["tweet_id"], name: "index_tweet_tag_relations_on_tweet_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.string "title"
    t.text "about"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "circulation"
    t.string "award"
    t.integer "reader_id"
    t.integer "circulationtotwothousand"
    t.integer "circulationtotwentyten"
    t.integer "circulationtotwentyfifteen"
    t.integer "circulationtotwentytwenty"
    t.integer "circulationtotwentytwentyfive"
    t.text "app"
    t.string "serialization"
    t.string "circulationtotal"
    t.string "author"
    t.integer "volume"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "comments", "readers"
  add_foreign_key "comments", "tweets"
  add_foreign_key "likes", "readers"
  add_foreign_key "likes", "tweets"
  add_foreign_key "tweet_tag_relations", "tags"
  add_foreign_key "tweet_tag_relations", "tweets"
end
