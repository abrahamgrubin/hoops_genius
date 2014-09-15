class GamesController < ApplicationController

  def new
    @team = Team.find(params[:team_id])
    @game = @team.games.build
  end

end
