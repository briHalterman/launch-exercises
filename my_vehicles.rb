module Towable
  def can_tow?(pounds)
    pounds < 5000
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@number_of_vehicles = 0

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def age
    puts "My #{@model} is #{years_old} years old."
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

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end

class MyCar < Vehicle
  NUMBER_OF_SEATS = 5

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_SEATS = 3

  def to_s
    "My truck is a #{color}, #{year}, #{@model}!"
  end
end

# thunderbird = MyCar.new(1988, 'ford thunderbird', 'red')

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

# puts thunderbird.color        # Red is easier to find
# thunderbird.respray('white')  # But I want white
# puts thunderbird.color

# MyCar.gas_mileage(22, 440)

my_car = MyCar.new(1988, 'ford thunderbird', 'white')
my_truck = MyTruck.new('1988', 'ford F-150', 'Light Blue')

# my_car2 = MyCar.new(1988, 'ford thunderbird', 'white')
# my_truck2 = MyTruck.new(1988, 'ford F-150', 'Light Blue')

# puts Vehicle.number_of_vehicles

# puts my_truck.can_tow?(9000)

# puts MyCar.ancestors
# puts "-----------"
# puts MyTruck.ancestors
# puts "-----------"
# puts Vehicle.ancestors

# my_car.speed_up(30)
# my_car.current_speed

# my_truck.respray('red')
# puts my_truck.to_s

my_car.age

# If I keep coding, someday I will be able to get my dream car!