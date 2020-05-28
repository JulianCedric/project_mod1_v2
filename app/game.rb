class Game

    # X = ?? 

    def start
        system "clear"
        introduction
        demo 
    end

    def introduction 
        puts "J.A.R.V.I.S. initializing"
        sleep(5)
        puts " "
    end

    def demo
        # Demo of a session is only 25 seconds long. 
        puts "Enter 'x' any time throughout this session to stop the 25-second timer and leave the session."
        sleep(2)
        puts " "
        x = gets.chomp
        puts "Beginning session in 3.. " 
        sleep(1.5) 
        puts " " 
        puts "2.. "
        sleep(1.5) 
        puts " "
        puts "1.. "
        sleep(1.5)
        puts " "
        puts "CODE TIME"
        sleep(5)
        puts " "
        puts "20 seconds to go"
        sleep(5)
        puts " "
        puts "About half-way there."
        sleep(2)
        puts " "
        puts "And remember.. "
        sleep(2)
        puts " "
        puts "You can only get better each time you practice."
        sleep(7)
        puts " " 
        puts "Done in 3.. "
        sleep(1)
        puts " "
        puts "2.. "
        sleep(1)
        puts " "
        puts "1.. "
        sleep(1)
        puts " "
        puts "That wasn't so bad now was it?"
        sleep(2.5)
        puts " "
        puts "You've just completed your very first session!"
        sleep(2.5)
        puts " "
        puts "Every time you complete three sessions in a row" 
        sleep(2.5)
        puts " "
        puts "That is, at least one session per day" 
        sleep(2.5)
        puts " "
        puts "For 3 consecutive days,"
        sleep(1)
        puts " "
        puts "You unlock an upgraded model of Ironman's Suit Armor"
        sleep(1)
        puts " "
        puts "Which not only gives you a new superpower,"
        sleep(1)
        puts " "
        puts "But each upgrade also unlocks a new foe"
        sleep(1)
        puts " "
        puts "Each more powerful than the last."
        sleep(2)
        puts " "
        puts "to be continued"
        sleep(3)
        puts " "
    end

end