class mathQuestion
    attr_accessor :player_turn
    def initialize(player_turn)
      @player_turn = player_turn
    end
    def creating_question
        first_random_number = rand(1..9)
        secound_random_number = rand(1..9)
        puts "What does #{first_random_number} plus #{secound_random_number}"
end
newPerson = mathQuestion.new("#{new_name}")