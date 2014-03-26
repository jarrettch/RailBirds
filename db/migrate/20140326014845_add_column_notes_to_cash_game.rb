class AddColumnNotesToCashGame < ActiveRecord::Migration
  def change
    add_column :cash_games, :notes, :string
  end
end
