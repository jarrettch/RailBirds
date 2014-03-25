class AddColumnToCashGame < ActiveRecord::Migration
  def change
    add_column :cash_games, :user_id, :integer
  end
end
