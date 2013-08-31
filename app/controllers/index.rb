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
post '/deck/:deck_id' do
  #game = Game.create(user_id: sessions[:user_id], deck_id: params[:deck_id])
  game = Game.first
  game.card_shuffle
  @card = game.available_cards.pop
  redirect '/success' if @cards.empty?
  erb :card
end

#begin game
#show FIRST/NEXT card of deck
get '/game/:deck_id/:card_id' do
  game = Game.first
  game.card_shuffle
  @card = game.available_cards.pop
  erb :card
end


#check guess
#route answer if right/wrong
post '/game/:deck_id/:card_id' do
  #params[:answer]
  @card = Card.find(params[:card_id])

  if params[:card_value] == @card.answer
    if #last card
        #game finished
        erb :summary #success page
    end
    redirect  #go to NEXT card
  else #if wrong answer
    #render SAME card with "wrong answer" message
  end
    
end

#game is finished
get '/success' do

end


