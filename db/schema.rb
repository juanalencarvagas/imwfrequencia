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

ActiveRecord::Schema.define(version: 2021_08_27_231701) do

  create_table "eventos", force: :cascade do |t|
    t.datetime "data"
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tipo_eventos_id", null: false
    t.index ["tipo_eventos_id"], name: "index_eventos_on_tipo_eventos_id"
  end

  create_table "frequencia_eventos", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pessoa_id", null: false
    t.integer "evento_id", null: false
    t.index ["evento_id"], name: "index_frequencia_eventos_on_evento_id"
    t.index ["pessoa_id"], name: "index_frequencia_eventos_on_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "tipo"
    t.string "cargo"
    t.string "depto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nome"
  end

  create_table "tipo_eventos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "eventos", "tipo_eventos", column: "tipo_eventos_id"
  add_foreign_key "frequencia_eventos", "eventos"
  add_foreign_key "frequencia_eventos", "pessoas"
end
