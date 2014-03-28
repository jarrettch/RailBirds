class CashGamesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cash_games = current_user.cash_games
    @cash_game = CashGame.find_by(params[:id])
  end

  def show
    @cash_game = CashGame.find(params[:id])
  end

  def new
    @user = User.find_by(params[:id])
    @cash_game = CashGame.new
  end

  def edit
    @cash_game = CashGame.find(params[:id])
  end

  def create
    @user = User.find_by(params[:id])
    @cash_game = @user.cash_games.new(cash_game_params)
    if @cash_game.save
      flash[:success] = "Session saved!"
      redirect_to cash_games_path
    else
      render :action => :new
    end
  end

  def update
    @cash_game = CashGame.find_by(params[:id])
    @cash_game.update_attributes!(cash_game_params)
    redirect_to cash_game_path
  end

  def destroy
    @cash_game = CashGame.find(params[:id])
    @cash_game.destroy
    redirect_to cash_games_path
  end

  private
    def cash_game_params
      params.require(:cash_game).permit(:start_session, :end_session, :location, :game, :buyin_and_rebuys, :cash_out, :notes)
    end

end
