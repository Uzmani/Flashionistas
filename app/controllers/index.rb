#home page, shows login
get '/' do
  if current_user
    redirect '/decks'
  end
  erb :signup
end

#go to decks
get '/decks' do
  # puts '*' *100
  # p current_user
  @decks = Deck.all
  erb :flashboard
end

#select a deck
#assign deck and user to new game instance
get '/deck/:deck_id' do
  new_game
  redirect "/game"
end


#begin game
#show FIRST/NEXT card of deck
get '/game' do
  current_card
  redirect '/success' unless @card # double redirect logic is odd
  erb :card
end


#check guess
#route answer if right/wrong
post '/game' do  
  if check_guess
    next_card
  else
    wrong_answer
  end
  redirect '/game'    
end

#game is finished
get '/success' do

end


