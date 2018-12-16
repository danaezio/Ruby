class ControlsController < ApplicationController
  before_action :set_players

  def index

  end

  def game

  end

  def champions
    @players = Player.all
  end

  def rules

  end

  def show
    @player = Player.find_by(id: params[:id])
    if @player.nil?
      redirect_to root_path
    end
  end

  def set_players
    @players = Player.all
  end
end
