class CashGamesController < ApplicationController

  def index
    @cash_games = CashGame.all
  end

  def new
    @cash_game = CashGame.new
  end

  def create
    @cash_game = CashGame.new(params[:cash_game].permit(:location))
    @cash_game.save
    redirect_to :back
  end

  def show

  end

  def edit
  end

  def delete
  end

  private
    def cash_game_params
      params.require(:cash_game).permit(:location)
    end

end
