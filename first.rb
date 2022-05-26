puts 'Hello World!'

puts 'escae using "\\"'
puts 'that\'s right, what you already say to me!'

# Repetitive Lives of a Method
def hi
    puts "Hello Ruby!"
end

puts hi()

def hey(name)
    puts "Hello #{name}!"
end

puts hey("sj")

puts hey "cooler"

# Holding Spots in a String
def hi(name = 'World')
    puts "Hello #{name.capitalize}!"
end

puts hi 'chris'
puts hi
puts hi("willams")
puts hi('willams')

# Evolving Into a Greeter
class Greeter
    def initialize(name="Ruby")
        @name = name
    end

    def say_hi
        puts("Hi, #{@name}!")
    end

    def say_bye
        puts("Bye #{@name}, come back soon")
    end

end