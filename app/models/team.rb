class Team < ActiveRecord::Base
	belongs_to :user
  has_many :players
  has_many :home_games, class_name: 'Game', foreign_key: :home_team_id
	has_many :away_games, class_name: 'Game', foreign_key: :away_team_id
	validates :name, presence: true, uniqueness: true  
  
end
