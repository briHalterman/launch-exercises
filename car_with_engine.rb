class Engine
  def start
    puts "Engine starting..."
  end
end

class Passenger
end

class Car
  def initialize(passengers)
    @engine = Engine.new  # Engine instance is created when Car is created
    @passengers = passengers  # Passengers are given to the Car at creation
  end

  def start
    @engine.start
  end
end


passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)
my_car.start  # Engine is an integral part of a Car

