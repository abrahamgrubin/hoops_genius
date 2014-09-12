class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :number
      t.string :position
      t.integer :team_id
      t.integer :fg_attempts
      t.integer :fg_makes
      t.integer :fg_percent
      t.integer :assists
      t.integer :reb_total
      t.integer :reb_def
      t.integer :reb_off
      t.integer :steals
      t.integer :blocks

      t.timestamps
    end
  end
end
