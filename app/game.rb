require relative

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
        puts "Great! Thanks, #{name.capitalize}. And your nickname too, please."
        nickname = gets.chomp
        puts "Awesome. You're all set."
        sleep(2)
        puts " "
    end

    def main_menu
        "In this app, you can browse all of Ironman's Suits as well as add Marvel movies that you've seen."
        sleep(2)
        puts " "
        puts "What would you like to do "
        puts " "
    end



end