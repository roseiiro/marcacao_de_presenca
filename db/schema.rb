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

ActiveRecord::Schema.define(version: 2022_08_19_142122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "estudante_na_turmas", force: :cascade do |t|
    t.bigint "turma_id", null: false
    t.bigint "estudante_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["estudante_id"], name: "index_estudante_na_turmas_on_estudante_id"
    t.index ["turma_id"], name: "index_estudante_na_turmas_on_turma_id"
  end

  create_table "estudantes", force: :cascade do |t|
    t.string "nome"
    t.decimal "nota"
    t.string "nif", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "identificacao_da_turma", default: "", null: false
    t.string "descricao"
    t.decimal "quantidade_de_estudante"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tipo_de_user", default: 0, null: false
    t.string "nome", default: "", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "estudante_na_turmas", "estudantes"
  add_foreign_key "estudante_na_turmas", "turmas"
end
