class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :location
      t.datetime :date_of_game

      t.timestamps
    end
  end
end
