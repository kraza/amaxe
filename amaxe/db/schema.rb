# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100318104408) do

# Could not dump table "categories" because of following StandardError
#   Unknown type 'sring' for column 'd3'

  create_table "header_footers", :force => true do |t|
    t.string   "logo"
    t.string   "header"
    t.string   "d1"
    t.string   "d2"
    t.string   "d3"
    t.string   "t1"
    t.string   "t2"
    t.string   "t3"
    t.string   "b1"
    t.string   "b2"
    t.string   "b3"
    t.string   "f"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "fdata"
    t.binary   "hdata"
    t.binary   "td1"
    t.binary   "td2"
    t.binary   "td3"
    t.binary   "bd1"
    t.binary   "bd2"
    t.binary   "bd3"
  end

  create_table "mugshots", :force => true do |t|
    t.integer "parent_id"
    t.string  "content_type"
    t.string  "filename"
    t.string  "thumbnail"
    t.integer "size"
    t.integer "width"
    t.integer "height"
  end

  create_table "pictures", :force => true do |t|
    t.string "comment"
    t.string "name"
    t.string "content_type"
    t.binary "data",         :limit => 1048576
  end

  create_table "products", :force => true do |t|
    t.integer  "parent_id"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.integer  "cat_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "action"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
