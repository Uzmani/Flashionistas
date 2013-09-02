helpers do
  def new_game
    game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
    session[:game_cards] = game.get_shuffled_deck
  end

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

  def wrong_answer
    session[:wrong_answers] << current_card_id
  end

  def total_cards
    session[:game_cards].length
  end

  def wrong_answers
    session[:wrong_answers]
  end

  def get_wrong_answers
    @wrong = []
    wrong_answers.each {|id| @wrong << Card.find_by_id(id)}
  end

  def total_correct
    total_cards - wrong_answers.length
  end
  
  def score
    ((total_correct.to_f / total_cards) * 100).round(1)
  end
end
