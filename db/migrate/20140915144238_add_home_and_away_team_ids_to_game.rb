class AddHomeAndAwayTeamIdsToGame < ActiveRecord::Migration
  def change
    add_column :games, :home_team_id, :integer, index: true
    add_column :games, :away_team_id, :integer, index: true
    add_index :games, :home_team_id
    add_index :games, :away_team_id
  end
end
