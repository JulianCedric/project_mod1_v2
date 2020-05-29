require_relative './models/user.rb'
require_relative './models/movie.rb'
require_relative './models/suit.rb'

class Game
                                                    @@fan_points_arr = []
                                                    @@user_arr = [] 

    def start
        system "clear"
        introduction
        welcome
        main_menu 
    end

                                                    def fan_points_arr 
                                                        @@fan_points_arr  
                                                    end

                                                    def user_arr
                                                        @@user_arr  
                                                    end 

                                                    def user_name
                                                        user_arr[0]
                                                    end

                                                    def user_fan_points 
                                                        user_arr[1]
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
        puts "Great! Thanks, #{name.capitalize}. You're all set, so let's jump right in."
        name = User.create(name: "#{name.capitalize}", fan_points: 0)
        @@user_arr << name
        # puts " "
        # puts "Awesome. You can use either one at login, btw. You're all set."
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
        puts "   Enter '1' to browse all suits."
        puts "   Enter '2' to browse Marvel movies."
        puts " "
        input = gets.chomp
        if input.to_i == 1 
            suits_menu
            # puts " suits_menu "
        elsif input.to_i == 2
            movies_menu 
            # puts " movies_menu "
        # else
        #     puts "Please enter either '1' or '2'."
        #     # self.prompt_0
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
            puts "#{i + 1} #{suit.model}"
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
        input = gets.chomp
        puts ""

        if input.to_i != 0  && input.to_i <= Movie.all.count
            movie = Movie.find_by(id: input.to_i)
            @@fan_points_arr << movie
            @@user_arr << fan_points_arr.count
            # puts "Great! Every time you check off a movie on this list, we award you with 1 fanpoint."
            # "And each time you collect 3, you unlock a new SuperVillain.. needs to be revised.. "   
            puts " "
            puts " "
            puts "Test Notes for Malcolm regarding Julian's latest tests: "
            puts " "
            puts " "
            puts "fan_points_arr.count:"
            puts fan_points_arr.count   
            puts " "
            puts "user:"
            puts user_name
            puts " "
            puts "user's name:"
            puts user_name.name  
            puts " "
            puts "user's fan_points:"
            puts user_fan_points 
            puts " "
            puts "Basically, these are the main things we need to do the last bit of 'engineering' for our MVP to be complete:"
            puts "Set up counter and update a user's fan_points (+= 1) each time a new movie is added.. "
          
            # Add point to users fanpoints
            # Display message about it
        else
            self.movies_menu
        end

    end

end

# What is a method that will take 'fan_points_arr.count' and add it to 