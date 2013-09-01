class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  before_save :create_shuffled_deck

  def get_cards
    self.shuffle_deck.split(', ').map {|id| Card.find(id.to_i) }
  end

  def create_shuffled_deck
    self.shuffle_deck = deck.cards.shuffle.map {|card| card.id}.join(', ')
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
