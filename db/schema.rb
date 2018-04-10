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

ActiveRecord::Schema.define(:version => 20130603140738) do

  create_table "designers", :force => true do |t|
    t.string   "d_name"
    t.string   "d_desc"
    t.string   "d_pic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_usages", :force => true do |t|
    t.string   "pu_title"
    t.string   "pu_pic"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "pr_name"
    t.string   "pr_desc"
    t.string   "pr_pic1"
    t.string   "pr_pic2"
    t.string   "pr_pic3"
    t.string   "pr_pic4"
    t.string   "pr_pic5"
    t.string   "pr_pic6"
    t.string   "pr_pic7"
    t.string   "pr_pic8"
    t.string   "pr_major"
    t.string   "pr_top"
    t.integer  "designer_id"
    t.string   "pr_style"
    t.string   "pr_usage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products_showrooms", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "showroom_id"
  end

  create_table "showrooms", :force => true do |t|
    t.string   "s_title"
    t.string   "s_city"
    t.string   "s_address"
    t.string   "s_email"
    t.string   "s_tel"
    t.string   "s_fax"
    t.string   "s_opening"
    t.string   "s_pic"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
