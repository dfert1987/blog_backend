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

ActiveRecord::Schema.define(version: 2021_07_27_032712) do

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "body"
    t.string "mainImage"
    t.string "category"
    t.string "tagOne"
    t.string "tagTwo"
    t.string "tagThree"
    t.integer "thumbsUp"
    t.integer "thumbsDown"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "upvotes"
    t.integer "downvotes"
    t.integer "user_id", null: false
    t.integer "blog_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["blog_id"], name: "index_comments_on_blog_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "avatar"
    t.string "address"
    t.string "twitter"
    t.string "name"
    t.string "dob"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "about"
    t.string "address_line_1"
    t.string "address_line_two"
    t.string "city"
    t.string "last_name"
    t.string "first_name"
    t.string "state"
  end

  add_foreign_key "comments", "blogs"
  add_foreign_key "comments", "users"
end
