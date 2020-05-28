User.destroy_all
Movie.destroy_all
Suit.destroy_all 
Villain.destroy_all 

# () => Number of instances for MVP.

# User instances (3):

User.create(name: "Adam", nickname: "Fan Dude")
User.create(name: "Belle", nickname: "Fan Girl")
User.create(name: "Chris", nickname: "Just Chris")

# Suit instances (7):
    # A user unlocks a new suit afte21 movies. 

Suit.create!(model: "Hydro Armor", superpower: "Deep Sea Swimming")
Suit.create(model: "Hulkbuster Armor MK II", superpower: "Super Strength")
Suit.create(model: "Bleeding Edge Armor", superpower: "Nanotech")
Suit.create(model: "Stealth Armor MK I", superpower: "Stealth")
Suit.create(model: "Space Armor MK I", superpower: "Space Flight") 
Suit.create(model: "God Buster Armor", superpower: "God-level Strength")
Suit.create(model: "Telepresence Armor", superpower: "Interdimensional Travel")
    
# Movie instances (21):
    # 1 user, 21 movies, 7 suits.

Movie.create(name: "mov1", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov2", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov3", user_id: adam.id, suit_id: s1.id)
Movie.create(name: "mov4", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov5", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov6", user_id: adam.id, suit_id: s2.id)
Movie.create(name: "mov7", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov8", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov9", user_id: adam.id, suit_id: s3.id)
Movie.create(name: "mov10", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov11", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov12", user_id: adam.id, suit_id: s4.id)
Movie.create(name: "mov13", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov14", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov15", user_id: adam.id, suit_id: s5.id)
Movie.create(name: "mov16", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov17", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov18", user_id: adam.id, suit_id: s6.id)
Movie.create(name: "mov19", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov20", user_id: adam.id, suit_id: nil)
Movie.create(name: "mov21", user_id: adam.id, suit_id: s7.id)

# Villain instances (14):
    # 2 per suit.

Villain.create(name: "UNLOCKABLE VILLAIN 1", superpower: "Deep Sea Swimming", suit_id: s1.id)
Villain.create(name: "UNLOCKABLE VILLAIN 2", superpower: "Deep Sea Swimming", suit_id: s1.id)
Villain.create(name: "UNLOCKABLE VILLAIN 3", superpower: "Deep Sea Swimming", suit_id: s2.id)
Villain.create(name: "UNLOCKABLE VILLAIN 4", superpower: "Deep Sea Swimming", suit_id: s2.id)
Villain.create(name: "UNLOCKABLE VILLAIN 5", superpower: "Deep Sea Swimming", suit_id: s3.id)
Villain.create(name: "UNLOCKABLE VILLAIN 6", superpower: "Deep Sea Swimming", suit_id: s3.id)
Villain.create(name: "UNLOCKABLE VILLAIN 7", superpower: "Deep Sea Swimming", suit_id: s4.id)
Villain.create(name: "UNLOCKABLE VILLAIN 8", superpower: "Deep Sea Swimming", suit_id: s4.id)
Villain.create(name: "UNLOCKABLE VILLAIN 9", superpower: "Deep Sea Swimming", suit_id: s5.id)
Villain.create(name: "UNLOCKABLE VILLAIN 10", superpower: "Deep Sea Swimming", suit_id: s5.id)    
Villain.create(name: "UNLOCKABLE VILLAIN 11", superpower: "Deep Sea Swimming", suit_id: s6.id)
Villain.create(name: "UNLOCKABLE VILLAIN 12", superpower: "Deep Sea Swimming", suit_id: s6.id)
Villain.create(name: "UNLOCKABLE VILLAIN 13", superpower: "Deep Sea Swimming", suit_id: s7.id)
Villain.create(name: "UNLOCKABLE VILLAIN 14", superpower: "Deep Sea Swimming", suit_id: s7.id)