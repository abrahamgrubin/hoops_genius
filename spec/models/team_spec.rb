require 'rails_helper'

RSpec.describe Team, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe Team do 
  	it "Is named Eagles" do 
  		team = Team.new 
  		team.should_not be_valid
  	end
  end
end
