User.destroy_all
Session.destroy_all
Suit.destroy_all 
Villain.destroy_all 

# () => Number of instances for MVP.

# User instances (3):

adam = User.create(name: "Adam", nickname: "Fan Dude")
belle = User.create(name: "Belle", nickname: "Fan Girl")
chris = User.create(name: "Chris", nickname: "Just Chris")

# Suit instances (7):
    # A user unlocks a new suit after each 3-day streak of completed sessions. 


s1 = Suit.create(model: "Hydro Armor", superpower: "Deep Sea Swimming")
s2 = Suit.create(model: "Hulkbuster Armor MK II", superpower: "Super Strength")
s3 = Suit.create(model: "Bleeding Edge Armor", superpower: "Nanotech")
s4 = Suit.create(model: "Stealth Armor MK I", superpower: "Stealth")
s5 = Suit.create(model: "Space Armor MK I", superpower: "Space Flight") 
s6 = Suit.create(model: "God Buster Armor", superpower: "God-level Strength")
s7 = Suit.create(model: "Telepresence Armor", superpower: "Interdimensional Travel")
    
# Session instances (21):
    # 1 user, 21-day streak of completed ('c') sessions, 7 suits.

sess1 = Session.new(name: "Sess1", status: "c", user_id: adam.id, suit_id: nil)
sess2 = Session.new(name: "Sess2", status: "c", user_id: adam.id, suit_id: nil)
sess3 = Session.new(name: "Sess3", status: "c", user_id: adam.id, suit_id: s1.id)
sess4 = Session.new(name: "Sess4", status: "c", user_id: adam.id, suit_id: nil)
sess5 = Session.new(name: "Sess5", status: "c", user_id: adam.id, suit_id: nil)
sess6 = Session.new(name: "Sess6", status: "c", user_id: adam.id, suit_id: s2.id)
sess7 = Session.new(name: "Sess7", status: "c", user_id: adam.id, suit_id: nil)
sess8 = Session.new(name: "Sess8", status: "c", user_id: adam.id, suit_id: nil)
sess9 = Session.new(name: "Sess9", status: "c", user_id: adam.id, suit_id: s3.id)
sess10 = Session.new(name: "Sess10", status: "c", user_id: adam.id, suit_id: nil)
sess11 = Session.new(name: "Sess11", status: "c", user_id: adam.id, suit_id: nil)
sess12 = Session.new(name: "Sess12", status: "c", user_id: adam.id, suit_id: s4.id)
sess13 = Session.new(name: "Sess13", status: "c", user_id: adam.id, suit_id: nil)
sess14 = Session.new(name: "Sess14", status: "c", user_id: adam.id, suit_id: nil)
sess15 = Session.new(name: "Sess15", status: "c", user_id: adam.id, suit_id: s5.id)
sess16 = Session.new(name: "Sess16", status: "c", user_id: adam.id, suit_id: nil)
sess17 = Session.new(name: "Sess17", status: "c", user_id: adam.id, suit_id: nil)
sess18 = Session.new(name: "Sess18", status: "c", user_id: adam.id, suit_id: s6.id)
sess19 = Session.new(name: "Sess19", status: "c", user_id: adam.id, suit_id: nil)
sess20 = Session.new(name: "Sess20", status: "c", user_id: adam.id, suit_id: nil)
sess21 = Session.new(name: "Sess21", status: "c", user_id: adam.id, suit_id: s7.id)

# Villain instances (14):
    # 2 per suit.

v1 = Villain.new(name: "UNLOCKABLE CHARACTER 1", superpower: "Deep Sea Swimming", suit_id: s1.id)
v2 = Villain.new(name: "UNLOCKABLE CHARACTER 2", superpower: "Deep Sea Swimming", suit_id: s1.id)
v3 = Villain.new(name: "UNLOCKABLE CHARACTER 3", superpower: "Deep Sea Swimming", suit_id: s2.id)
v4 = Villain.new(name: "UNLOCKABLE CHARACTER 4", superpower: "Deep Sea Swimming", suit_id: s2.id)
v5 = Villain.new(name: "UNLOCKABLE CHARACTER 5", superpower: "Deep Sea Swimming", suit_id: s3.id)
v6 = Villain.new(name: "UNLOCKABLE CHARACTER 6", superpower: "Deep Sea Swimming", suit_id: s3.id)
v7 = Villain.new(name: "UNLOCKABLE CHARACTER 7", superpower: "Deep Sea Swimming", suit_id: s4.id)
v8 = Villain.new(name: "UNLOCKABLE CHARACTER 8", superpower: "Deep Sea Swimming", suit_id: s4.id)
v9 = Villain.new(name: "UNLOCKABLE CHARACTER 9", superpower: "Deep Sea Swimming", suit_id: s5.id)
v10 = Villain.new(name: "UNLOCKABLE CHARACTER 10", superpower: "Deep Sea Swimming", suit_id: s5.id)    
v11 = Villain.new(name: "UNLOCKABLE CHARACTER 11", superpower: "Deep Sea Swimming", suit_id: s6.id)
v12 = Villain.new(name: "UNLOCKABLE CHARACTER 12", superpower: "Deep Sea Swimming", suit_id: s6.id)
v13 = Villain.new(name: "UNLOCKABLE CHARACTER 13", superpower: "Deep Sea Swimming", suit_id: s7.id)
v14 = Villain.new(name: "UNLOCKABLE CHARACTER 14", superpower: "Deep Sea Swimming", suit_id: s7.id)