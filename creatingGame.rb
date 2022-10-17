class Creating_game 
    def initialize
        @player_turn =1
        @first_player_lives =3
        @secound_player_lives =3
    end
def starting_game
puts "P1: #{first_player_lives}/3 vs P2: #{secound_player_lives}/3"
questions = Questions.new(1)
if questions.creating_question

else
    changes_lives_count
end

end

def changes_lives_count(player_turn)
if @player_turn=1
    @first_player_lives-=1
else
    @secound_player_lives-=1
end

end
