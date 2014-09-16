class GamesController < ApplicationController
  def new
    @game = Game.new
  end
  
  def create
     @team = current_user.teams.find(params[:id])
     @game = @team.home_games.create(params.require(:game).permit(:home_team_id, :away_team_id, :location, :date_of_game))
    if @game.save 
    	redirect_to games_path
    else 
    	flash[:error] = "There was an error creating your game"
    	render :new
    end 
  end 
end
