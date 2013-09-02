#home page, login
get '/' do
  @user = User.new
  if current_user
    redirect '/decks'
  end
  erb :signup
end

#go to decks
get '/decks' do
  reset_game
  @decks = Deck.all
  erb :flashboard
end

#select a deck
get '/deck/:deck_id' do
  new_game
  redirect "/game"
end

#begin game
get '/game' do
  current_card
  redirect '/success' unless @card # double redirect logic is odd
  erb :card
end

#check guess
post '/game' do  
  check_guess
  next_card
  redirect '/game'    
end

#game is finished
get '/success' do
  @percentage = score
  erb :summary
end
