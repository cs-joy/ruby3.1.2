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

# Create an object
obj = Greeter.new("Sanju")

# Access to the obj
obj.say_hi
obj.say_bye()

# Under the Object’s Skin
puts "------------------"
var = Greeter.instance_methods
puts var
puts "------------------"

# If we want to just list methods defined for Greeter we can tell it to not include ancestors by passing
# it the parameter false, meaning we don’t want methods defined by ancestors.
var = Greeter.instance_methods(false)
puts var
puts "-------------------"

# let’s see which methods our greeter object responds to:

var = obj.respond_to?("name") # false - because it doesn’t know `name`
puts var

var = obj.respond_to?("say_hi") # true - because  it knows `say_hi`
puts var

var = obj.respond_to?("to_s") # true by default- `to_s` meaning convert something to a string, a method that’s defined by default for every object
puts var

puts "-------------------"
# Altering Classes—It’s Never Too Late
class Greeter
    attr_accessor :name # Using attr_accessor defined two new methods for us, `name` to get the value, and `name=` to set it.
end

obj2 = Greeter.new("js")
obj2.say_hi
obj2.say_bye

# object responds to
var = obj2.respond_to?("name")
puts var

var = obj2.respond_to?("name=")
puts var

var = obj2.respond_to?("hi")
puts var

puts "--------------"
obj2.say_hi
var = obj2.name
puts var

puts "--------------"
obj2.name="sz"

obj2.say_hi
obj2.say_bye