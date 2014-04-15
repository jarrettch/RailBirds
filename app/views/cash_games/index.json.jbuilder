json.set! :cash_games do
  json.array! @cash_games do |game|
    json.profit game.cash_out - game.buyin_and_rebuys
    json.date game.end_session
  end
end
