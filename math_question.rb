class Questions
    attr_accessor :player_turn
    def initialize(player_turn)
      @player_turn = player_turn
    end
    def creating_question
        first_random_number = rand(1..9)
        secound_random_number = rand(1..9)
        puts "--------- NEW TURN --------- "
        puts "Player#{@player_turn} :What does #{first_random_number} plus #{secound_random_number}"
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
firstMathQuestion = Questions.new(1)
firstMathQuestion.creating_question