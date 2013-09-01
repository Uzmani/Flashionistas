class AddCorrectGuessesToGame < ActiveRecord::Migration
  def change
    add_column :games, :correct_guesses, :integer, default: 0
  end
end
