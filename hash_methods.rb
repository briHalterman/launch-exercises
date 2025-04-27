pets = {cat: "fluffy", dog: "rex", bunny: "foofoo", fish: "bubbles", turtle: "shelly"}

puts 'Species of our pets:'

pets.each_key { |species| puts species }

puts 'Names of our pets:'

pets.each_value { |name| puts name }

puts "Can you guess what each pet's name is?"

pets.each { |species, name| puts "#{name.capitalize} is a #{species}. And we love them!"}