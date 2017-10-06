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

ActiveRecord::Schema.define(version: 20170926195259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "areas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careers", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_cities_on_region_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "rut",                                 null: false
    t.string   "razon"
    t.string   "direccion"
    t.string   "rubro"
    t.integer  "telefono"
    t.text     "resumen"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "city_id"
    t.index ["city_id"], name: "index_companies_on_city_id", using: :btree
    t.index ["confirmation_token"], name: "index_companies_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_companies_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_companies_on_unlock_token", unique: true, using: :btree
  end

  create_table "disc_profiles", force: :cascade do |t|
    t.integer  "decision"
    t.integer  "interaccion"
    t.integer  "serenidad"
    t.integer  "cumplimiento"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "interest_publications", force: :cascade do |t|
    t.integer  "publication_id"
    t.integer  "interest_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["interest_id"], name: "index_interest_publications_on_interest_id", using: :btree
    t.index ["publication_id"], name: "index_interest_publications_on_publication_id", using: :btree
  end

  create_table "interests", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "postulation_id"
    t.string   "nombre"
    t.text     "mensaje"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["postulation_id"], name: "index_messages_on_postulation_id", using: :btree
  end

  create_table "postulations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "publication_id"
    t.text     "contenido"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["publication_id"], name: "index_postulations_on_publication_id", using: :btree
    t.index ["user_id"], name: "index_postulations_on_user_id", using: :btree
  end

  create_table "publications", force: :cascade do |t|
    t.string   "titulo"
    t.text     "problema"
    t.datetime "limite"
    t.text     "description"
    t.text     "premios"
    t.integer  "company_id"
    t.integer  "area_id"
    t.integer  "type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["area_id"], name: "index_publications_on_area_id", using: :btree
    t.index ["company_id"], name: "index_publications_on_company_id", using: :btree
    t.index ["type_id"], name: "index_publications_on_type_id", using: :btree
  end

  create_table "regions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_careers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_user_careers_on_career_id", using: :btree
    t.index ["user_id"], name: "index_user_careers_on_user_id", using: :btree
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "interest_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["interest_id"], name: "index_user_interests_on_interest_id", using: :btree
    t.index ["user_id"], name: "index_user_interests_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "rut",                                 null: false
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.date     "fechanac"
    t.string   "genero"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "city_id"
    t.integer  "university_id"
    t.integer  "disc_profile_id"
    t.index ["city_id"], name: "index_users_on_city_id", using: :btree
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["disc_profile_id"], name: "index_users_on_disc_profile_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["university_id"], name: "index_users_on_university_id", using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "cities", "regions"
  add_foreign_key "companies", "cities"
  add_foreign_key "interest_publications", "interests"
  add_foreign_key "interest_publications", "publications"
  add_foreign_key "messages", "postulations"
  add_foreign_key "postulations", "publications"
  add_foreign_key "postulations", "users"
  add_foreign_key "publications", "areas"
  add_foreign_key "publications", "companies"
  add_foreign_key "publications", "types"
  add_foreign_key "user_careers", "careers"
  add_foreign_key "user_careers", "users"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
  add_foreign_key "users", "cities"
  add_foreign_key "users", "disc_profiles"
  add_foreign_key "users", "universities"
end
