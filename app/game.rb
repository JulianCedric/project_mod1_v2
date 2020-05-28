require_relative './models/user.rb'
require_relative './models/movie.rb'

class Game

    def start
        system "clear"
        introduction
        welcome
        main_menu
    end

    def introduction 
        puts "J.A.R.V.I.S. initializing"
        sleep(1)
        puts "..."
        sleep(1)
        puts " "
        puts " "
    end

    def welcome
        puts "Welcome to the Marvel Movies App."
        sleep(1)
        puts " "
        puts "Please enter your first name."
        name = gets.chomp
        puts " "
        puts "Great! Thanks, #{name.capitalize}. And your nickname too, please."
        nickname = gets.chomp
        name = User.create(name: "#{name.capitalize}", nickname: "#{nickname.capitalize}")
        puts " "
        puts "Awesome. You can use either one at login, btw. You're all set."
        sleep(1)
        puts " "
    end


    def prompt_0
        puts "   1. Browse Suits"
        puts "   2. Your Marvel Movies"
        sleep(1)
        puts " "
        puts "What would you like to do first?"
        sleep(1)
        puts " "
        puts "Enter '1' to browse all suits."
        puts "Enter '2' to browse Marvel movies."
        puts " "
        input = gets.chomp
        if input == '1' 
            suits_menu
        elsif input == '2'
            movies_menu 
        else
            puts "Please enter either '1' or '2'."
            self.prompt_0
        end
        puts ""
    end

    def main_menu
        puts "In this app, you can browse all of Ironman's Suits as well as add Marvel movies that you've seen."
        sleep(1)
        puts "The more Marvel movies you've seen, the more advanced a Suit you unlock."
        sleep(1)
        puts "But more on that in just a bit."
        sleep(1)
        puts " "
        puts " "
        puts "MAIN MENU:"
        puts " "
        prompt_0
        puts ""
    end

    def suits_menu
        puts " "
        suits = Suit.all
        suits.each.with_index do |suit, i|
            puts "#{i + 1}) #{suit.model} "
        end

        puts ""
        input = gets.chomp
        puts ""

        if input.to_i != 0  && input.to_i <= Suit.all.count
            suit = Suit.find_by(id: input.to_i)
            puts "Model: #{suit.model}"
            puts "Superpower: #{suit.superpower}"
        else
            self.suits_menu
        end
    end

    def movies_menu
        movies = Movie.all
        movies.each.with_index do |movie, i|
           puts "#{i + 1}) #{movie.name}"
        end

        puts "Please enter the number next to one movie you have seen from this list."
        puts ""
        input = gets.chomp
        puts ""

        if input.to_i != 0  && input.to_i <= Movie.all.count
            movie = Movie.find_by(id: input.to_i)
            puts movie.name
        else
            self.movies_menu
        end
    end
end