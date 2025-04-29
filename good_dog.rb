module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{height} tall."
  end
end

class HumanBeing
  include Speak

  def initialize
    puts "HumanBeing object initialized."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info                # => Sparky weighs 10 lbs and is 12 inches tall.
puts sparky.speak               # => "Sparky says arf!"

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info                # => Spartacus weighs 45 lbs and is 24 inches tall.


puts ''
fido = GoodDog.new("Fido", "15 inches", "20lbs")
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
