class Suit < ActiveRecord::Base 
    has_many :movies 
    has_many :users, through: :movies  
    has_many :villains
end