arr = [1, 2, 3, 4, 5, 6]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr