# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080517191454) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", :force => true do |t|
    t.text     "description"
    t.datetime "due_at"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.float    "hours"
    t.float    "rate"
    t.string   "description"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", :force => true do |t|
    t.string  "name"
    t.integer "level"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_bits", :force => true do |t|
    t.string   "description"
    t.integer  "time_log_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_logs", :force => true do |t|
    t.datetime "started_at"
    t.datetime "ended_at"
    t.text     "description"
    t.integer  "project_id"
    t.integer  "customer_id"
  end

  create_table "todos", :force => true do |t|
    t.text     "description"
    t.integer  "priority_id"
    t.boolean  "completed"
    t.integer  "customer_id", :null => false
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
