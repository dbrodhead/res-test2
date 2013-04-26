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

ActiveRecord::Schema.define(:version => 20130426200423) do

  create_table "periods", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.time     "stime"
    t.time     "etime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "t_cal_days", :force => true do |t|
    t.date     "date"
    t.text     "details"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "trades", :force => true do |t|
    t.string   "trade"
    t.integer  "mosid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "training_days", :force => true do |t|
    t.integer  "t_cal_day_id"
    t.string   "weekday"
    t.text     "details"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
