class PlayersController < ApplicationController
  
  def show 
    @player = Player.find(params[:id])
  end

  def create 
      @team = Team.find(params[:team_id])
      @player = @team.players.new(params.require(:player).permit(:first_name, :last_name, :number, :position))
    if @player.save 
      redirect_to @team
    else 
      flash[:error] = "There was an error creating your player"
      render :new
    end 
  end 

  def new 
    @team = Team.find(params[:team_id])
    @player = @team.players.new 
  end 

  def update 
  end 

  def edit 
  end 

  def destroy 
  end 

end
