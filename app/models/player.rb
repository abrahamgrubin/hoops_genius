class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :game
  validates :last_name, :first_name, presence: true 
end
