# - Create a class called MyCar
# - When you initialize a new instance or object of the class, allow the user to
# define some instance variables that tell us the year, model, and color of the car.
# - Create an instance variable that is set to 0 during instantiation of the object
# to trck the current speed of the car as well.
# - Create instance methods that allow the car to speed up, brake, and shut the car off.

# Add an accessor method to you MyCar class to change and view the color of your car
# Then add an accessor method that allows you to view, but not modify, the year of your car

# You want to create a nice interface that allows you to accurately describe the action
# you want you program to perform.
# Create a method called respray that can be called on an object and
# will modify the color of the car

class MyCar
  attr_accessor :color
  attr_reader :year
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake a decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def respray(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

thunderbird = MyCar.new(1988, 'ford thunderbird', 'red')

# thunderbird.speed_up(25)
# thunderbird.brake(15)
# thunderbird.current_speed
# thunderbird.shut_down
# thunderbird.current_speed

# puts thunderbird.color
# thunderbird.color = 'blue'
# puts thunderbird.color

# puts thunderbird.year
# thunderbird.year = 1996   # Of course I only want a 1988, the color can change, but not the year

puts thunderbird.color        # Red is easier to find
thunderbird.respray('white')  # But I want white
puts thunderbird.color

# If I keep coding, someday I will be able to get my dream car!