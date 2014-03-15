class CreateCashGames < ActiveRecord::Migration
  def change
    create_table :cash_games do |t|
      t.datetime :start_session
      t.datetime :end_session
      t.string :location
      t.string :game
      t.decimal :buyin_and_rebuys, precision: 10, scale: 2
      t.decimal :cash_out, precision: 10, scale: 2

      t.timestamps
    end
  end
end
