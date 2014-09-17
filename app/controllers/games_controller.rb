class GamesController < ApplicationController
  def new
    @team = Team.find(params[:team_id])
    @game = Game.new
  end
  
  def create
    
     @game = Game.new(game_params)
     #@alphabetical = Team.all.order(:name)
    if @game.save 
    	redirect_to @game, notice: 'Game created'
    else 
      flash[:error] = "There was an error creating the game! Please try again"
      render :new
    end 
  end

  def show 
    @game = Game.find(params[:id])
  end 

  private

  def game_params
    params.require(:game).permit(:home_team_id, :away_team_id, :location, :date_of_game)
  end
  
end
