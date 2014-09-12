class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      
      t.string :name
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
