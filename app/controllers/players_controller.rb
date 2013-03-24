class PlayersController < ApplicationController
  before_filter :authenticate_account!

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    @player.account = current_account
    if @player.save
      redirect_to accounts_my_path
    else
      render :new
    end
  end
end
