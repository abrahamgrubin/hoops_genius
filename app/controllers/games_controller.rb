class GamesController < ApplicationController
  def index 
    @team1 = Team.find(params[:id])
    @team2 = Team.find(params[:id])
    @players = @team.players 
  end 
  
  def show
    @team1 = Team.find(params[:id])
    @team2 = Team.find(params[:id])
  end 

  def new 
    @game = Game.new 
  end 


end
