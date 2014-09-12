class PlayersController < ApplicationController
  
  def show 
    @player = Player.find(params[:id])
  end

  def create 
  end 

  def new 
  end 

  def update 
  end 

  def edit 
  end 

  def destroy 
  end 

end
