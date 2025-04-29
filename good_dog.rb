# --- Behavior Modules ---

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

# --- GoodDog Class ---

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :height, :weight, :age

  @@number_of_dogs = 0

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def initialize(n, h, w, a)
    @@number_of_dogs += 1
    self.name = n
    self.height = h
    self.weight = w
    self.age = calculate_age_in_dog_years(a)
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w, a)
    self.name = n
    self.height = h
    self.weight = w
    self.age = calculate_age_in_dog_years(a)
  end

  def info
    "#{self.name} weighs #{self.weight}, is #{self.height} tall."
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end

  def what_is_self
    self
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def calculate_age_in_dog_years(human_years)
    human_years * DOG_YEARS
  end

  def human_years
    age / DOG_YEARS
  end
end

# -- HumanBeing Class ---

class HumanBeing
  include Speak

  def initialize
    puts "HumanBeing object initialized."
  end
end

# --- Demonstration ---

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs", 4)
puts sparky.info                # => Sparky weighs 10 lbs and is 12 inches tall.
puts sparky.speak               # => "Sparky says arf!"
sparky.change_info('Spartacus', '24 inches', '45 lbs', 4)
puts sparky.info                # => Spartacus weighs 45 lbs and is 24 inches tall.
puts ''

fido = GoodDog.new("Fido", "15 inches", "20lbs", 6)
puts fido.speak                 # => "Fido says arf!"
puts ''

bob = HumanBeing.new
bob.speak("Hello!")
puts ''

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts ''
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors
puts ''

puts GoodDog.what_am_i
puts ''

puts "Number of dogs: #{GoodDog.total_number_of_dogs}"
puts ''

luke = GoodDog.new("Luke", "22 inches", "65 lbs", 7)
bullet = GoodDog.new("Bullet", "21 inches", "60 lbs", 2)

puts "Number of dogs: #{GoodDog.total_number_of_dogs}"
puts ''

puts sparky
p sparky
puts ''

izzy = GoodDog.new('Izzy', '20 inches', '32 lbs', 13)
p izzy.what_is_self
puts ''

puts sparky.public_disclosure
puts izzy.public_disclosure
puts