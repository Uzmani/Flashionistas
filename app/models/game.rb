class Game < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck
  before_save :get_shuffled_deck

  def get_shuffled_deck
     deck.cards.shuffle.map {|card| card.id}
  end

end
