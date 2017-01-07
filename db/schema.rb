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

ActiveRecord::Schema.define(version: 20170107183018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ability_score_increases", force: :cascade do |t|
    t.integer  "ability_score_type_id"
    t.integer  "increase_amount"
    t.string   "special_increase"
    t.string   "ability_score_increaseable_type"
    t.integer  "ability_score_increaseable_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "ability_score_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ability_scores", force: :cascade do |t|
    t.integer  "ability_score_type_id"
    t.integer  "score"
    t.integer  "character_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "alignments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "armor_weapon_proficiencies", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "proficientable_id"
    t.string   "proficientable_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "race_id"
    t.integer  "hero_class_id"
    t.integer  "experience",    default: 0, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "player_name"
    t.integer  "player_id"
    t.integer  "alignment_id"
    t.integer  "background_id"
  end

  create_table "hero_classes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "hit_dice"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "learned_languages", force: :cascade do |t|
    t.integer  "language_id"
    t.string   "languageable_type"
    t.integer  "languageable_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primary_abilities", force: :cascade do |t|
    t.integer  "ability_score_type_id"
    t.string   "primary_abilityable_type"
    t.integer  "primary_abilityable_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.integer  "max_age"
    t.decimal  "max_height"
    t.decimal  "min_height"
    t.string   "size"
    t.integer  "build_type_id"
    t.integer  "speed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "saving_throw_proficiencies", force: :cascade do |t|
    t.integer  "ability_score_type_id"
    t.integer  "proficientable_id"
    t.string   "proficientable_type"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
