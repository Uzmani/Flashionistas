class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  before_save :get_shuffled_deck

  def get_shuffled_deck
     deck.cards.shuffle.map {|card| card.id}
  end

  def cards_count
    self.deck.cards.count
  end

  def cards_guessed_correct? 
    
  end

  def cards_left 
    cards_count - cards_guessed_correct
  end

  def percentage_complete
    ((cards_guessed_correct.to_f) / cards_count) * 100).round(1)
  end

end
