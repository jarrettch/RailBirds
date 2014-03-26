class CashGamesController < ApplicationController

  def index
    @cash_games = CashGame.all
    @cash_game = CashGame.find_by(params[:id])
  end

  def new
    @user = User.find_by(params[:id])
    @cash_game = CashGame.new
  end

  def create
    @user = User.find_by(params[:id])
    @cash_game = @user.cash_games.new(cash_game_params)
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
      params.require(:cash_game).permit(:start_session, :end_session, :location, :game, :buyin_and_rebuys, :cash_out, :notes)
    end

end
