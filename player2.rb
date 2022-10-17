class Person2
    attr_accessor :name
    
    def initialize(name)
      @name = name
    end
end
new_name =gets.chomp
puts "Your name is #{new_name}"
newPerson = Person2.new("#{new_name}")