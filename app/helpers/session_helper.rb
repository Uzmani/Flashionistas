helpers do
  def current_user
    User.find_by_id(session[:user_id]) if session[:user_id]
  end

  def reset_game
    session[:game_cards] = []
    session[:card_index] = 0
    session[:wrong_answers] = []
  end
end
