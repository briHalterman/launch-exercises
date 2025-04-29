class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

# bob = Person.new("Steve")
# puts bob.name
# bob.name = "Bob"
# puts bob.name

malory = Person.new(64)
sterling = Person.new(42)

puts malory.older?(sterling)
puts sterling.older?(malory)

puts malory.age