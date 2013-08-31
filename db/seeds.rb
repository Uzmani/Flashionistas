include BCrypt
User.create(user_name: "Nathan", password_hash: Password.create("123"))

deck1 = Deck.create(name: "Celebs")
deck2 = Deck.create(name: "Cuisine")

deck1.cards << Card.create(definition: "Blake Lively", answer: "HOT")
deck1.cards << Card.create(definition: "Nicholas Cage", answer: "NOT")
deck1.cards << Card.create(definition: "Amanda Bynes", answer: "NOT")
deck1.cards << Card.create(definition: "Lindsay Lohan", answer: "NOT")
deck1.cards << Card.create(definition: "Jack Black", answer: "NOT")
deck1.cards << Card.create(definition: "Tanner Welch", answer: "HOT")
deck1.cards << Card.create(definition: "Sherif Abushadi (sp?)", answer: "HOT")
deck1.cards << Card.create(definition: "Anne Spalding", answer: "HOT")
deck1.cards << Card.create(definition: "Barack Obama", answer: "HOT")
deck1.cards << Card.create(definition: "Leaving your dishes in the sink at DBC", answer: "NOT")









