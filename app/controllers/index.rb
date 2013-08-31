#home page, shows login
get '/' do
  if current_user
    redirect '/decks'
  end
  erb :signin
end



#go to decks
get '/decks' do
  @decks = Deck.all
  erb :flashboard
end

#select a deck
#assign deck and user to new game instance
get '/deck/:deck_id' do
  game = Game.create(user_id: session[:user_id], deck_id: params[:deck_id])
  @cards = game.card_shuffle

  redirect "/game/#{game.id}"
end


#begin game
#show FIRST/NEXT card of deck
get '/game/:game_id' do
  @card = game.get_card


  game = Game.find(params[:game_id])
  redirect '/success' if game.available_cards.empty?
  
  erb :card
end


#check guess
#route answer if right/wrong
post '/game/:deck_id' do
  #params[:answer]
  @card = Card.find(params[:card_id])

  if params[:card_value] == @card.answer
    if #last card
        #game finished
        erb :summary #success page
    end
  else #if wrong answer
    #render SAME card with "wrong answer" message
  end
    
end

#game is finished
get '/success' do

end


