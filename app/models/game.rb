class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  def card_shuffle
    self.deck.cards.shuffle
  end

  def get_card
    @available_cards.pop
  end
end
