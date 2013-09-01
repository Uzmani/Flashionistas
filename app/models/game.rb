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

end
