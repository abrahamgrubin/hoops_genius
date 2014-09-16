class GamesController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @game = Game.new
  end
  
  def create
    @team = Team.find(params[:team_id])
    # @game = Game.new(game_params)
    @game = @team.home_games.build(game_params)
    if @game.save 
    	redirect_to root_path, notice: 'Game created'
    else 
    	flash[:error] = "There was an error creating your game"
    	render :new
    end 
  end 

  private

  def game_params
    params.require(:game).permit(:home_team_id, :away_team_id, :location, :date_of_game)
  end
  
end
