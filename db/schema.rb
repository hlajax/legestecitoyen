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

ActiveRecord::Schema.define(version: 2019_10_22_075850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actualites", force: :cascade do |t|
    t.string "titre"
    t.text "contenu"
    t.string "image"
    t.string "category_id"
    t.bigint "administrateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["administrateur_id"], name: "index_actualites_on_administrateur_id"
    t.index ["slug"], name: "index_actualites_on_slug", unique: true
  end

  create_table "administrateurs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_administrateurs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administrateurs_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.bigint "administrateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["administrateur_id"], name: "index_categories_on_administrateur_id"
    t.index ["slug"], name: "index_categories_on_slug", unique: true
  end

  create_table "citoyens", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_citoyens_on_email", unique: true
    t.index ["reset_password_token"], name: "index_citoyens_on_reset_password_token", unique: true
  end

  create_table "corruption_cats", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "slug"
    t.bigint "administrateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["administrateur_id"], name: "index_corruption_cats_on_administrateur_id"
    t.index ["slug"], name: "index_corruption_cats_on_slug", unique: true
  end

  create_table "corruptions", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "image"
    t.string "ville"
    t.string "date"
    t.string "slug"
    t.bigint "corruption_cat_id", null: false
    t.bigint "citoyen_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["citoyen_id"], name: "index_corruptions_on_citoyen_id"
    t.index ["corruption_cat_id"], name: "index_corruptions_on_corruption_cat_id"
    t.index ["slug"], name: "index_corruptions_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "petition_cats", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "administrateur_id"
    t.index ["slug"], name: "index_petition_cats_on_slug", unique: true
  end

  create_table "petitions", force: :cascade do |t|
    t.string "titre"
    t.text "contenu"
    t.string "image"
    t.bigint "petition_cat_id", null: false
    t.bigint "citoyen_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.index ["citoyen_id"], name: "index_petitions_on_citoyen_id"
    t.index ["petition_cat_id"], name: "index_petitions_on_petition_cat_id"
    t.index ["slug"], name: "index_petitions_on_slug", unique: true
  end

  create_table "sondages", force: :cascade do |t|
    t.string "titre"
    t.text "description"
    t.string "slug"
    t.string "image"
    t.bigint "administrateur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["administrateur_id"], name: "index_sondages_on_administrateur_id"
    t.index ["slug"], name: "index_sondages_on_slug", unique: true
  end

  add_foreign_key "actualites", "administrateurs"
  add_foreign_key "categories", "administrateurs"
  add_foreign_key "corruption_cats", "administrateurs"
  add_foreign_key "corruptions", "citoyens"
  add_foreign_key "corruptions", "corruption_cats"
  add_foreign_key "petitions", "citoyens"
  add_foreign_key "petitions", "petition_cats"
  add_foreign_key "sondages", "administrateurs"
end
