require "./player.rb"

class Questions
    attr_accessor :current_player
    def initialize(current_player)
      @current_player = current_player
    end
    def creating_question
        first_random_number = rand(1..9)
        secound_random_number = rand(1..9)
        puts "--------- NEW TURN --------- "
        puts "Player#{@current_player.player_id} :What does #{first_random_number} plus #{secound_random_number}"
        answer = gets.chomp.to_i
        puts "The answer you typed is #{answer}"
        if answer == first_random_number+ secound_random_number
        puts "YES! YOU ARE CORRECT"
        return true
    else 
        puts "Seriously? No!"
        return false
    end
end

end
#firstMathQuestion = Questions.new(1)
#firstMathQuestion.creating_question