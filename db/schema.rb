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

ActiveRecord::Schema.define(version: 20170803073733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents_documents", force: :cascade do |t|
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents_items", force: :cascade do |t|
    t.integer  "documents_document_id"
    t.integer  "products_variant_id"
    t.text     "title"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["documents_document_id"], name: "index_documents_items_on_documents_document_id", using: :btree
    t.index ["products_variant_id"], name: "index_documents_items_on_products_variant_id", using: :btree
  end

  create_table "products_products", force: :cascade do |t|
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_variants", force: :cascade do |t|
    t.integer  "products_product_id"
    t.text     "title"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["products_product_id"], name: "index_products_variants_on_products_product_id", using: :btree
  end

end
