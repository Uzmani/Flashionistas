include BCrypt
User.create(user_name: "Nathan", password_hash: Password.create("123"))

deck1 = Deck.create(name: "Celebs")
deck2 = Deck.create(name: "Cuisine")

deck1.cards << Card.create(definition: "Blake Lively", answer: "HOT", images: 'http://images1.fanpop.com/images/photos/2100000/Blake-Lively-blake-lively-2125657-1024-768.jpg')
deck1.cards << Card.create(definition: "Nicholas Cage", answer: "NOT", images: 'http://images2.wikia.nocookie.net/feed-the-beast/images/e/e0/Nick-Cage.jpg')
deck1.cards << Card.create(definition: "Amanda Bynes", answer: "NOT", images: 'http://www.jta.org/wp-content/uploads/2013/05/24-amanda-bynes-court.jpg')
deck1.cards << Card.create(definition: "Lindsay Lohan", answer: "NOT", images: 'http://amradaronline.files.wordpress.com/2013/05/lindsay-lohan-wasted-square-inf.jpg?w=236&h=236&crop=1')
deck1.cards << Card.create(definition: "Jack Black", answer: "NOT", images: 'http://multiplayerblog.mtv.com/wp-content/uploads/2008/06/jack-black-movie-awards.jpg')
deck1.cards << Card.create(definition: "Tanner Welsh", answer: "HOT", images: 'http://devbootcamp.com/imgs/teaching-large-tanner.png')
deck1.cards << Card.create(definition: "Sherif Abushadi", answer: "HOT", images: 'http://devbootcamp.com/imgs/teaching-large-sherif.png')
deck1.cards << Card.create(definition: "Anne Spalding", answer: "HOT", images: 'http://devbootcamp.com/imgs/teaching-large-anne.png')
deck1.cards << Card.create(definition: "Barack Obama", answer: "HOT", images: 'http://www.whitehouse.gov/sites/default/files/administration-official/ao_image/president_official_portrait_hires.jpg')
deck1.cards << Card.create(definition: "Leaving your dishes in the sink at DBC", answer: "NOT", images: 'http://upload.wikimedia.org/wikipedia/commons/2/2a/Dirty_dishes.jpg')




