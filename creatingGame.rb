class Creating_game 
    def initialize 
        @player_turn =1
        @first_player_lives =3
        @secound_player_lives =3
    end
def starting_game
puts "P1: #{@first_player_lives}/3 vs P2: #{@secound_player_lives}/3"
questions = Questions.new(player_turn)
if questions.creating_question
    changes_player_playing
else
    changes_lives_count
end

end

def changes_lives_count(player_turn)
if @player_turn ==1
    @first_player_lives-=1
else
    @secound_player_lives-=1
end
if @first_player_lives || @secound_player_lives
    puts "Final Score : P1: #{first_player_lives}/3 vs P2: #{secound_player_lives}/3"
    puts "--------- GAME OVER --------- "
    puts "Good Bye"
end
end

def changes_player_playing(player_turn)
    if @player_turn ==1
        @player_turn = 2
    else
        @player_turn = 1
    end
    starting_game
end

end

new_Game_instance = Creating_game.new()
new_Game_instance.starting_game
