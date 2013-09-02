class AddShuffledeckToGame < ActiveRecord::Migration
  def change
    add_column :games, :shuffle_deck, :string
  end
end
