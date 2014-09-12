class Player < ActiveRecord::Base
  belongs_to :team
  validates :last_name, :first_name, presence: true 
end
