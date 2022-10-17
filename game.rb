#require "./question.rb"
#require "./player.rb"
class Game

    def initialize 
        @player1=Player.new(1)
        @player2=Player.new(2)
        @current_player =  @player1
    end

    
        
        def changes_player_playing
            if @current_player == @player1
                @current_player = @player2
                starting_game
            else
                @current_player = @player1
                starting_game
            end
        end

def starting_game
puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
questions = Questions.new(@current_player)
if !questions.creating_question
    @current_player.decrement_lives
end
if @player1.lives == 0  || @player2.lives ==0
    puts "Final Score : P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts "--------- GAME OVER --------- "
    puts "Good Bye"
 else
    changes_player_playing
end

end



end

#new_Game_instance = Game.new()
#new_Game_instance.starting_game
