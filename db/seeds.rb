User.destroy_all
Movie.destroy_all
Suit.destroy_all 
Villain.destroy_all 

# () => Number of instances for MVP.

# User instances (3):

adam = User.create(name: "Adam", nickname: "Fan Dude")
belle = User.create(name: "Belle", nickname: "Fan Girl")
chris = User.create(name: "Chris", nickname: "Just Chris")

# Suit instances (7):
    # A user unlocks a new suit afte21 movies. 


s1 = Suit.create(model: "Hydro Armor", superpower: "Deep Sea Swimming")
s2 = Suit.create(model: "Hulkbuster Armor MK II", superpower: "Super Strength")
s3 = Suit.create(model: "Bleeding Edge Armor", superpower: "Nanotech")
s4 = Suit.create(model: "Stealth Armor MK I", superpower: "Stealth")
s5 = Suit.create(model: "Space Armor MK I", superpower: "Space Flight") 
s6 = Suit.create(model: "God Buster Armor", superpower: "God-level Strength")
s7 = Suit.create(model: "Telepresence Armor", superpower: "Interdimensional Travel")
    
# Movie instances (21):
    # 1 user, 21 movies, 7 suits.

mov1 = Movie.create(name: "mov1", user_id: adam.id, suit_id: nil)
mov2 = Movie.create(name: "mov2", user_id: adam.id, suit_id: nil)
mov3 = Movie.create(name: "mov3", user_id: adam.id, suit_id: s1.id)
mov4 = Movie.create(name: "mov4", user_id: adam.id, suit_id: nil)
mov5 = Movie.create(name: "mov5", user_id: adam.id, suit_id: nil)
mov6 = Movie.create(name: "mov6", user_id: adam.id, suit_id: s2.id)
mov7 = Movie.create(name: "mov7", user_id: adam.id, suit_id: nil)
mov8 = Movie.create(name: "mov8", user_id: adam.id, suit_id: nil)
mov9 = Movie.create(name: "mov9", user_id: adam.id, suit_id: s3.id)
mov10 = Movie.create(name: "mov10", user_id: adam.id, suit_id: nil)
mov11 = Movie.create(name: "mov11", user_id: adam.id, suit_id: nil)
mov12 = Movie.create(name: "mov12", user_id: adam.id, suit_id: s4.id)
mov13 = Movie.create(name: "mov13", user_id: adam.id, suit_id: nil)
mov14 = Movie.create(name: "mov14", user_id: adam.id, suit_id: nil)
mov15 = Movie.create(name: "mov15", user_id: adam.id, suit_id: s5.id)
mov16 = Movie.create(name: "mov16", user_id: adam.id, suit_id: nil)
mov17 = Movie.create(name: "mov17", user_id: adam.id, suit_id: nil)
mov18 = Movie.create(name: "mov18", user_id: adam.id, suit_id: s6.id)
mov19 = Movie.create(name: "mov19", user_id: adam.id, suit_id: nil)
mov20 = Movie.create(name: "mov20", user_id: adam.id, suit_id: nil)
mov21 = Movie.create(name: "mov21", user_id: adam.id, suit_id: s7.id)

# Villain instances (14):
    # 2 per suit.

v1 = Villain.create(name: "UNLOCKABLE CHARACTER 1", superpower: "Deep Sea Swimming", suit_id: s1.id)
v2 = Villain.create(name: "UNLOCKABLE CHARACTER 2", superpower: "Deep Sea Swimming", suit_id: s1.id)
v3 = Villain.create(name: "UNLOCKABLE CHARACTER 3", superpower: "Deep Sea Swimming", suit_id: s2.id)
v4 = Villain.create(name: "UNLOCKABLE CHARACTER 4", superpower: "Deep Sea Swimming", suit_id: s2.id)
v5 = Villain.create(name: "UNLOCKABLE CHARACTER 5", superpower: "Deep Sea Swimming", suit_id: s3.id)
v6 = Villain.create(name: "UNLOCKABLE CHARACTER 6", superpower: "Deep Sea Swimming", suit_id: s3.id)
v7 = Villain.create(name: "UNLOCKABLE CHARACTER 7", superpower: "Deep Sea Swimming", suit_id: s4.id)
v8 = Villain.create(name: "UNLOCKABLE CHARACTER 8", superpower: "Deep Sea Swimming", suit_id: s4.id)
v9 = Villain.create(name: "UNLOCKABLE CHARACTER 9", superpower: "Deep Sea Swimming", suit_id: s5.id)
v10 = Villain.create(name: "UNLOCKABLE CHARACTER 10", superpower: "Deep Sea Swimming", suit_id: s5.id)    
v11 = Villain.create(name: "UNLOCKABLE CHARACTER 11", superpower: "Deep Sea Swimming", suit_id: s6.id)
v12 = Villain.create(name: "UNLOCKABLE CHARACTER 12", superpower: "Deep Sea Swimming", suit_id: s6.id)
v13 = Villain.create(name: "UNLOCKABLE CHARACTER 13", superpower: "Deep Sea Swimming", suit_id: s7.id)
v14 = Villain.create(name: "UNLOCKABLE CHARACTER 14", superpower: "Deep Sea Swimming", suit_id: s7.id)