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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140521011244) do

  create_table "builds", :force => true do |t|
    t.string   "name"
    t.string   "gg_id"
    t.string   "ext_id"
    t.text     "description"
    t.datetime "added_to_db"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.string   "rating"
    t.text     "description"
    t.datetime "release_date"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "classic",      :default => false
  end

  create_table "parts", :force => true do |t|
    t.string   "name"
    t.string   "gg_id"
    t.string   "ext_id"
    t.string   "supplier"
    t.text     "description"
    t.datetime "added_to_db"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "gg_id"
    t.text     "description"
    t.string   "phone"
    t.string   "email"
    t.string   "address0"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "address4"
    t.datetime "added_to_db"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end