class GamesController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @game = Game.new
  end
  
  def create
     @team = Team.find(params[:team_id])
     @game = @team.home_games.build(game_params)
     #@alphabetical = Team.all.order(:name)
    if @game.save 
    	redirect_to [@team, @game], notice: 'Game created'
      #@team, @game is the routing issue. 
    else 
      flash[:error] = "There was an error creating the game! Please try again" 
      #flash error is not showing up. 
      render :new
    end 
  end

  def show 
    @team = Team.find(params[:team_id])
    @game = @team.home_games.find(params[:id])
    #this is where the issue is. It is also a routing issue
  end 

  private 

  def game_params 
    params.require(:game).permit(:home_team_id, :away_team_id, :location, :date_of_game, :game_id)
  end

end
