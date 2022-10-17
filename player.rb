class Player
    attr_reader :lives, :player_id
    def initialize(id)
        @lives=3
        @player_id=id
    end
    def decrement_lives
        @lives-=1
    end
end
#new_name =gets.chomp
#puts "Your name is #{new_name}"
#newPerson = Person2.new("#{new_name}")