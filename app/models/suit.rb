class Suit < ActiveRecord::Base 
    has_many :sessions
    has_many :users, through: :sessions 
    has_many :villains
end