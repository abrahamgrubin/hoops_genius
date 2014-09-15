class Team < ActiveRecord::Base
	belongs_to :user
  has_many :players
	has_many :games
	validates :name, presence: true, uniqueness: true  
  
end
