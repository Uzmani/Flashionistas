helpers do
  def new_game
    game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
    session[:game_cards] = game.get_shuffled_deck
  end

  def get_wrong_answers
    @wrong = []
    wrong_answer_ids.each {|id| @wrong << Card.find_by_id(id)}
  end

  def wrong_answer_ids
    session[:wrong_answers]
  end

  def wrong_answer
    session[:wrong_answers] << current_card_id
  end

# PLAYING GAME

  def current_card
    @card = Card.find_by_id(current_card_id)
  end

  def current_card_id
    session[:game_cards][session[:card_index]]
  end

  def next_card
    session[:card_index] += 1
  end

  def check_guess
    wrong_answer if params[:answer] != current_card.answer
  end

# STATS

  def total_cards
    session[:game_cards].length
  end

  def total_correct
    total_cards - wrong_answer_ids.length
  end

  def score
    ((total_correct.to_f / total_cards) * 100).round(1)
  end
end
