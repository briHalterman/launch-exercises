# def say
#   # method body goes here
# end

# puts "hello"
# puts "hi"
# puts "how are you"
# puts "I'm fine"

def say(words='hello world')
  puts words.capitalize + '.'    ## <= We only make the change here!
end

say
say "hello"
say "hi"
say "how are you"
say "I'm fine"

