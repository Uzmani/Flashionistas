helpers do
  def new_game
    game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
    session[:game_cards] = game.get_shuffled_deck
    session[:card_index] = 0
    session[:wrong_answers] = []
  end

  def current_card
    @card = Card.find_by_id(session[:game_cards][session[:card_index]])
  end

  def check_guess
    wrong_answer unless params[:answer] == current_card.answer
  end

  def next_card
    #last_card
    session[:card_index] += 1
  end

  def wrong_answer
    session[:wrong_answers] << session[:card_index]
    #session[:wrong_answers].uniq #useful if we loop
  end

  # def last_card?
  #   session[:game_cards].count == session[:card_index]
  # end  
end
