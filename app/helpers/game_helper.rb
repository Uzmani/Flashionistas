helpers do
  def new_game
    game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
    session[:game_cards] = game.get_shuffled_deck
  end

  def total_cards
    session[:game_cards].length
  end

  def current_card
    @card = Card.find_by_id(session[:game_cards][session[:card_index]])
  end

  def check_guess
    answer_is_wrong unless params[:answer] == current_card.answer
  end

  def next_card
    session[:card_index] += 1
  end

  def answer_is_wrong
    session[:wrong_answers] << session[:card_index]
  end

  def wrong_answers
    session[:wrong_answers]
  end
  
  def total_correct
    total_cards - answer_is_wrong.length
  end
  
  def score
    ((total_correct.to_f / total_cards) * 100).round(1)
  end
end
