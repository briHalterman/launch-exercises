# --- Behavior Modules ---

module Swimmable
  def swim
    "I'm swimming!"
  end
end

module Walkable
  def walk
    "I'm walking."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

module Breathable
  def breathe
    "I'm breathing!"
  end
end

# --- Animal Base Class ---

class Animal
  attr_accessor :name

  include Breathable

  # def initialize(name)
  #   @name = name
  # end

  def initialize
  end

  def speak
    "Hello!"
  end
end

# --- Mammal Namespace ---

module Mammal
  class Dog < Animal
    include Swimmable
    include Walkable

    def speak(sound)
      p "#{sound}"
    end

    class GoodDog < Dog
      # def initialize(n)
      #   self.name = n
      # end

      def initialize(name, color)
        super()
        @name = name
        @color = color
      end

      def speak
        # "#{self.name} says arf!"
        super + " from GoodDog class"
      end
    end

    class BadDog < Dog
      def initialize(age, name)
        super()
        @age = age
        @age = age
      end
    end
  end

  class Cat < Animal
    include Walkable
    include Climbable

    def initialize(name)
      super()
      @name = name
    end

    def say_name(name)
      p "#{name}"
    end
  end

  class Bear < Animal
    include Walkable
    include Climbable

    def initialize(name, color)
      super()
      @name = name
      @color = color
    end
  end
end

# --- Fish ---

class Fish < Animal
  include Swimmable

  def breathe
    "I breathe through gills!"
  end
end


# sparky = GoodDog.new("Sparky", "white")
# paws = Cat.new("Paws")
# bruno = GoodDog.new("Bruno", "brown")
# BadDog.new(2, "Bear")
# bear = Bear.new("Smokey", "black")
# nemo = Fish.new

# puts sparky.speak
# puts paws.speak

# puts sparky.swim
# puts nemo.swim
# # puts paws.swim  # NoMethodError: undefined method...

# puts "---Animal method lookup---"
# puts Animal.ancestors

# fido = Animal.new
# puts fido.speak
# # puts fido.walk  # NoMethodError: undefined method `walk'...

# puts "---GoodDog method lookup---"
# puts GoodDog.ancestors

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new("Kitty")
buddy.speak('Arf!')
kitty.say_name('kitty')