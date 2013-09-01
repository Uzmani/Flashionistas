#home page, shows login
get '/' do
  if current_user
    redirect '/decks'
  end
  erb :signup
end



#go to decks
get '/decks' do
  puts '*' *100
  p current_user
  @decks = Deck.all
  erb :flashboard
end

#select a deck
#assign deck and user to new game instance
get '/deck/:deck_id' do
  game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
  session[:game_cards] = game.get_cards
  redirect "/game"
end


#begin game
#show FIRST/NEXT card of deck

get '/deck/:deck_id' do
  game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
  session[:game_cards] = game.get_cards
  redirect "/game"
end

get '/game' do
  @card = session[:game_cards].last
  redirect '/success' if session[:game_cards].empty?
  

  erb :card
end


#check guess
#route answer if right/wrong
post '/game' do
  @card = session[:game_cards].last
  session[:game_cards].pop if params[:answer] == @card.answer
  redirect '/game'    
end

#game is finished
get '/success' do

end


