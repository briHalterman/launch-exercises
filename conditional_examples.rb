# Example 1
if x == 3
  puts "x is 3"
end

# Example 1: alternative
puts "x is 3" if x == 3

# Example 2
if x == 3
  puts "x is 3"
elseif x == 4
  puts "x is 4"
end

# Example 3
if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

# Example 4: must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

# unless acts as the opposite of if
puts "x is NOT 3" unless x == 3
