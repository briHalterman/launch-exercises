cat = {name: "whiskers"}
weight = {weight: "10lbs"}

puts "Merged: #{cat.merge(weight)}"
puts "Original Unchanged: #{cat}"
puts "Original unchanged: #{weight}"

dog = {name: "rover"}
weight = {weight: "45lbs"}

puts "Merged: #{dog.merge!(weight)}"
puts "Calling hash is mutated: #{dog}"
puts "Argument hash is not mutated: #{weight}"