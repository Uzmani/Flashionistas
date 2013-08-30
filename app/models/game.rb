class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def card_shuffle
    @available_cards = deck.cards.shuffle
  end

  def available_cards
    @available_cards
  end
end
