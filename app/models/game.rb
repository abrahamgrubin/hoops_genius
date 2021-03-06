class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: 'Team', foreign_key: :home_team_id
  belongs_to :away_team, class_name: 'Team', foreign_key: :away_team_id
  has_many :players

  validates :home_team, :away_team, presence: true
  

  # validates :home_team, presence: true, uniqueness: true  


end
