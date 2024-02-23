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

ActiveRecord::Schema[7.1].define(version: 2024_02_22_145145) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_posts", force: :cascade do |t|
    t.text "image"
    t.string "first_name"
    t.string "name"
    t.string "string"
    t.string "stage_name"
    t.text "soundcloud_link"
    t.string "description"
    t.text "instagram_link"
    t.text "spotify_link"
    t.text "twitter_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_posts", force: :cascade do |t|
    t.text "image"
    t.string "first_name"
    t.string "name"
    t.string "stage_name"
    t.text "soundcloud_link"
    t.string "description"
    t.text "instagram_link"
    t.text "spotify_link"
    t.text "twitter_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audio_posts", force: :cascade do |t|
    t.string "Name"
    t.string "Author_name"
    t.text "Image"
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "author_name"
    t.text "image"
    t.float "duration"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
