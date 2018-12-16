ActiveRecord::Schema.define(version: 2018_12_16_000750) do

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.integer "birth_year"
    t.integer "death_year"
    t.integer "champ_year_start"
    t.integer "champ_year_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
