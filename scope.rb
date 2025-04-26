# scope.rb

a = 5             # variable is initialized in the outer scope

# 3.times { |n| a = 3 }

3.times do |n|    # method invocation with a block
  a = 3           # is accessible here, in an inner scope?
  b = 5
end

puts a
puts b            # is b accessible here, in the outer scope?