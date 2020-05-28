class User < ActiveRecord::Base 
    has_many :sessions
    has_many :suits, through: :sessions 
end