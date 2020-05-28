class User < ActiveRecord::Base 
    has_many :movies
    has_many :suits, through: :movies 
end