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

ActiveRecord::Schema.define(version: 2020_02_11_103114) do

  create_table "dancers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.string "area"
    t.string "image"
    t.string "link1"
    t.string "link2"
    t.string "link3"
    t.text "career"
    t.text "text"
    t.integer "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dancers_on_name"
  end

  create_table "event_dancers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "event"
    t.integer "dancer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "event"
    t.integer "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "genre"
    t.string "area"
    t.integer "dancer"
    t.datetime "date"
    t.text "text"
    t.string "link1"
    t.string "link2"
    t.string "link3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area"], name: "index_events_on_area"
    t.index ["dancer"], name: "index_events_on_dancer"
    t.index ["genre"], name: "index_events_on_genre"
    t.index ["name"], name: "index_events_on_name"
  end

  create_table "genre_dancers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "genre"
    t.integer "dancer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "dancer"
    t.integer "event"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "text", limit: 4294967295
    t.index ["dancer"], name: "index_genres_on_dancer"
    t.index ["event"], name: "index_genres_on_event"
    t.index ["name"], name: "index_genres_on_name"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
