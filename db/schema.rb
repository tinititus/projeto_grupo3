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

ActiveRecord::Schema.define(version: 20181128184644) do

  create_table "bandas", force: :cascade do |t|
    t.string "name"
    t.string "genero"
    t.string "pais_de_origem"
    t.string "membros"
    t.float "media_rating"
    t.boolean "status"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_bandas_on_usuario_id"
  end

  create_table "fas", force: :cascade do |t|
    t.string "apelido"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_fas_on_usuario_id"
  end

  create_table "interpretations", force: :cascade do |t|
    t.text "interpretation"
    t.integer "musica_id"
    t.integer "fa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fa_id"], name: "index_interpretations_on_fa_id"
    t.index ["musica_id"], name: "index_interpretations_on_musica_id"
  end

  create_table "musicas", force: :cascade do |t|
    t.string "name"
    t.time "duracao"
    t.text "letra"
    t.string "album"
    t.integer "banda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banda_id"], name: "index_musicas_on_banda_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "nota"
    t.text "comentario"
    t.integer "banda_id"
    t.integer "fa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["banda_id"], name: "index_ratings_on_banda_id"
    t.index ["fa_id"], name: "index_ratings_on_fa_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
