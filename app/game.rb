require_relative './models/user.rb'
require_relative './models/movie.rb'
require_relative './models/suit.rb'

class Game
    attr_reader :user
    @@fan_points_arr = []
    @@user_arr = [] 

    def start
        system "clear"
        introduction
        login
        # welcome
        main_menu 
    end

    def login
        puts "   Please enter '0' to CREATE A NEW ACCOUNT, or '1' to LOGIN."
        input = gets.chomp
        if input == '0'
            puts "Please enter your first name."
            name = gets.chomp
            puts " "
            new_user = User.create(name: "#{name.capitalize}", fan_points: 0)
            puts " "
            puts " "
            puts "Great! Thanks, #{name}."
            sleep(1)
            puts "Your new account's been created."
            sleep(1)
            puts " "
            puts "The next time you use this app, you can login with your name."
            puts " "
            puts "Now let's jump right in, shall we?"
            sleep(1)
            puts " "
        elsif input == '1'
            puts "Welcome back to [title]! Please enter your first name: "
            returning_user = gets.chomp.capitalize
            if User.find_by(name: returning_user)
                puts "Welcome back #{returning_user}"
                @user = User.find_by(name: returning_user)
            else
                puts "Username not found"
            end
        puts " "
        end
    end


    # def start
    #     system "clear"
    #     intro
    #     login
    #         # prompt_0
    #     main_menu
    #     # delete_account
    #     # mission_complete_test_method
    # end                                            
    
    # def intro
    #     puts " "
    #     puts "J.A.R.V.I.S. initializing"
    #     sleep(2)
    #     puts "..."
    #     sleep(1)
    #     puts " "
    #     puts " "
    #     puts " "
    #     puts "Welcome to [title]: An Ironman Inspired App."
    #     sleep(2)
    #     puts " "
    # end                                
    
    def delete_account
        if @user
        puts "Are you sure you want to delete your account?"
        puts "Enter either 'Yes' or 'No'."
        x = gets.chomp
            if x == "Yes"
                puts " "
                deletion = User.find_by(id: self.user.id)
                deletion.destroy
                # delete_movies = Movie.where(user_id: self.user.id)[0]
                # if delete_movies
                # delete_movies.destroy
                # exit
            else
                puts " "
                # exit
            end
        end
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
        puts "   3. Delete Account"
        sleep(1)
        puts " "
        puts "What would you like to do first?"
        sleep(1)
        puts " "
        puts "   Enter '1' to browse all suits."
        puts "   Enter '2' to browse Marvel movies."
        puts "   Enter '3' to delete account."
        input = gets.chomp
        if input.to_i == 1 
            suits_menu
            puts " suits_menu "
        elsif input.to_i == 2
            movies_menu 
        elsif input.to_i == 3
            delete_account
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
            # puts "fan_points_arr.count:"
            # puts fan_points_arr.count   
            puts " "
            # puts "user:"
            # puts user_name
            # puts @user.name
            # puts " "
            # puts "user's name:"
            puts @user.name  
            # puts " "
        
            @user.update(fan_points: @user.fan_points.to_i + 1)
            puts "user's fan_points:"
            puts @user.fan_points
            # puts " "
            puts "Basically, these are the main things we need to do the last bit of 'engineering' for our MVP to be complete:"
            puts "Set up counter and update a user's fan_points (+= 1) each time a new movie is added.. "
            # self.main_menu
            # Add point to users fanpoints
            # Display message about it
        else
            self.movies_menu
        end
    end

end

# What is a method that will take 'fan_points_arr.count' and add it to 