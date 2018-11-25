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

ActiveRecord::Schema.define(version: 2018_11_25_162526) do

  create_table "card_generators", force: :cascade do |t|
    t.string "name"
    t.text "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_table_generators", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "table_generator_id", null: false
  end

  create_table "descriptions", force: :cascade do |t|
    t.integer "generator_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["generator_id"], name: "index_descriptions_on_generator_id"
  end

  create_table "dungeon_areas", force: :cascade do |t|
    t.string "description"
    t.text "discoveries"
    t.text "dangers"
    t.integer "dungeon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "unique"
    t.string "dressing"
    t.text "notes"
    t.index ["dungeon_id"], name: "index_dungeon_areas_on_dungeon_id"
  end

  create_table "dungeon_types", force: :cascade do |t|
    t.string "name"
    t.string "background"
    t.string "detail"
    t.text "backgrounds"
    t.text "details"
    t.text "connections"
    t.text "common_areas"
    t.text "unique_areas"
    t.text "features"
    t.text "finds"
    t.text "dressings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_dungeon_types_on_name", unique: true
  end

  create_table "dungeons", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.string "themes"
    t.string "overview"
    t.integer "dungeon_type_id"
    t.string "background"
    t.string "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "situation"
    t.string "entrance_condition"
    t.string "ruin"
    t.text "area_diagram"
    t.index ["dungeon_type_id"], name: "index_dungeons_on_dungeon_type_id"
    t.index ["name"], name: "index_dungeons_on_name", unique: true
  end

  create_table "table_generators", force: :cascade do |t|
    t.string "name"
    t.text "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
