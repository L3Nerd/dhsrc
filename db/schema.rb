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

ActiveRecord::Schema.define(version: 20160119174702) do

  create_table "age_classes", force: :cascade do |t|
    t.integer  "from"
    t.integer  "to"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "age_classes_trainings", id: false, force: :cascade do |t|
    t.integer "age_class_id", null: false
    t.integer "training_id",  null: false
  end

  add_index "age_classes_trainings", ["age_class_id", "training_id"], name: "index_age_classes_trainings_on_age_class_id_and_training_id"
  add_index "age_classes_trainings", ["training_id", "age_class_id"], name: "index_age_classes_trainings_on_training_id_and_age_class_id"

  create_table "comments", force: :cascade do |t|
    t.text     "content",          null: false
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "game_events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "team_id"
    t.integer  "venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "game_events", ["start_time"], name: "index_game_events_on_start_time"
  add_index "game_events", ["team_id"], name: "index_game_events_on_team_id"

  create_table "leagues", force: :cascade do |t|
    t.string   "name"
    t.string   "dsqv_name"
    t.integer  "license_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "leagues", ["license_id"], name: "index_leagues_on_license_id"

  create_table "licenses", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_in_games", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "game_event_id"
    t.integer  "status",        default: 0, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "player_in_games", ["game_event_id"], name: "index_player_in_games_on_game_event_id"
  add_index "player_in_games", ["player_id"], name: "index_player_in_games_on_player_id"

  create_table "player_in_teams", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "team_id"
    t.integer  "position",   default: 1, null: false
    t.boolean  "is_captain"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "player_in_teams", ["player_id"], name: "index_player_in_teams_on_player_id"
  add_index "player_in_teams", ["team_id"], name: "index_player_in_teams_on_team_id"

  create_table "players", force: :cascade do |t|
    t.date     "joined_at"
    t.string   "dsqv_nr"
    t.date     "license_expires"
    t.integer  "user_id"
    t.integer  "license_id"
    t.integer  "age_class_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "players", ["age_class_id"], name: "index_players_on_age_class_id"
  add_index "players", ["license_id"], name: "index_players_on_license_id"
  add_index "players", ["user_id"], name: "index_players_on_user_id"

  create_table "players_training_events", id: false, force: :cascade do |t|
    t.integer "player_id",         null: false
    t.integer "training_event_id", null: false
  end

  add_index "players_training_events", ["player_id", "training_event_id"], name: "index_player_id_training_event_id"
  add_index "players_training_events", ["training_event_id", "player_id"], name: "index_training_event_idplayer_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "dsqv_nr"
    t.integer  "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["league_id"], name: "index_teams_on_league_id"

  create_table "training_events", force: :cascade do |t|
    t.date     "day",                       null: false
    t.date     "lock_date",                 null: false
    t.integer  "players_count", default: 0, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "weekday",    null: false
    t.time     "start_time", null: false
    t.time     "end_time",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role_id"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["role_id"], name: "index_users_on_role_id"
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "street"
    t.string   "plz"
    t.string   "city"
    t.string   "maps_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
