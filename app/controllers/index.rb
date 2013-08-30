#home page, shows login
get '/' do
  # Look in app/views/index.erb
  erb :signin
end

#login happens
post '/user' do
# here,  we will authenticate user and if success, assign user_id to sessions
  redirect '/decks'
end

#go to decks
get '/decks' do
  erb :flashboard
end

#select a deck
get '/decks/:deck_id' do
  #assign deck and user to new game instance
  erb :card #playing_board
end

#show first/next card of deck
#post a guess
get '/game/:deck_id/:card_id' do
  
end

#check guess
post '/game/:deck_id/:card_id' do
  #params[:answer], check if right or wrong
  #wrong answer route, shows same card
  #right answer route, deal next card
end

#game is finished
get /game/:deck_id/finished!
