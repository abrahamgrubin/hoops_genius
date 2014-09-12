class TeamsController < ApplicationController
  
  def index 
  	@teams = current_user.teams
  end 

  def show
  end 

  def create 
    @team = current_user.teams.new(params.require(:team).permit(:name))
    if @team.save 
    	redirect_to teams_path
    else 
    	flash[:error] = "There was an error creating your team"
    	render :new
    end 
  end 

  def new 
    @team = Team.new 
  end 
  
  def update 
  end 

  def edit 
  end 

  def destroy 
  end 

end
