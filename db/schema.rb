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

ActiveRecord::Schema.define(version: 20181126155550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "helados", force: :cascade do |t|
    t.string "nombre"
    t.float "precio"
    t.string "sabor"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "tipo"
    t.float "precio"
    t.string "marca"
    t.float "cantidad"
    t.string "tipo_cantidad"
    t.string "cod_barras"
    t.date "fecha_elaboracion"
    t.date "fecha_vencimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pruebas", force: :cascade do |t|
    t.string "name"
    t.string "tipo"
    t.float "precio"
    t.date "fecha_vencimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "torta", force: :cascade do |t|
    t.string "sabor"
    t.integer "porciones"
    t.float "precio"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "birthday"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
