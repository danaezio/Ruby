class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.integer :birth_year
      t.integer :death_year
      t.integer :champ_year_start
      t.integer :champ_year_end

      t.timestamps
    end
  end
end
