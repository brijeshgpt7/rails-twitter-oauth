ActiveRecord::Schema.define(version: 20160528072427) do

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "access_token"
    t.string   "access_token_secret"
  end

end
