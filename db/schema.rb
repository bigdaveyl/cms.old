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

ActiveRecord::Schema.define(version: 20170622230403) do

  create_table "comments", force: :cascade do |t|
    t.string "name", limit: 255
    t.text "body"
    t.integer "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "name_url", limit: 255
    t.string "name_email", limit: 255
    t.string "user_ip", limit: 255
    t.string "user_agent", limit: 255
    t.string "referrer", limit: 255
    t.string "permalink", limit: 255
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleryphotos", force: :cascade do |t|
    t.string "photo_file_name", limit: 255
    t.string "photo_content_type", limit: 255
    t.datetime "photo_updated_at"
    t.integer "photo_file_size"
    t.text "photo_description"
    t.integer "gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postimages", force: :cascade do |t|
    t.string "image_file_name", limit: 255
    t.string "image_content_type", limit: 255
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", limit: 255
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 255, default: "", null: false
    t.string "encrypted_password", limit: 255, default: "", null: false
    t.string "reset_password_token", limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip", limit: 255
    t.string "last_sign_in_ip", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "admin", default: false, null: false
    t.boolean "blogger", default: false, null: false
    t.boolean "photos", default: false, null: false
    t.string "username", limit: 255
    t.string "unconfirmed_email", limit: 255, default: "", null: false
    t.text "biography"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username", "email"], name: "index_users_on_username_and_email", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
