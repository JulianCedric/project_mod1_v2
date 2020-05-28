require_relative './models/user.rb'

class Game

    def start
        system "clear"
        introduction
        welcome
        main_menu
    end

    def introduction 
        puts "J.A.R.V.I.S. initializing"
        sleep(2)
        puts "..."
        sleep(2)
        puts " "
    end

    def welcome
        puts "Welcome to the Marvel Movies App."
        sleep(2)
        puts " "
        puts "Please enter your first name."
        name = gets.chomp
        puts " "
        puts "Great! Thanks, #{name.capitalize}. And your nickname too, please."
        nickname = gets.chomp
        name = User.create(name: "#{name.capitalize}", nickname: "#{nickname.capitalize}")
        puts " "
        puts "Awesome. You can use either one at login, btw. You're all set."
        sleep(2)
        puts " "
    end

    def prompt_1
        puts "Enter '1' to browse all suits."
    end 

    def prompt_2
        puts "Enter '2' to browse Marvel movies."
    end

    def prompt_0
        puts "What would you like to do first?"
            sleep(2)
            puts " "
            prompt_1 
            prompt_2 
            puts " "
            input = gets.chomp
            if input == '1' 
                # suits_menu
            elsif input == '2'
                # movies_menu 
            else
                puts "Please enter either '1' or '2'."
            end
    end

    def main_menu
        puts "In this app, you can browse all of Ironman's Suits as well as add Marvel movies that you've seen."
        sleep(2)
        puts "MAIN MENU:"
        puts "   1. Browse Suits"
        puts "   2. Your Marvel Movies"
        prompt_0
    end



end