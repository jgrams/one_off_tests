def sum_of_cubes(a, b)
  array = []
  for i in a..b
    array.push(i)
  end
  array.inject (0) {|memo, number| memo += (number**3)}
end

def forced_sum_of_cubes(a, b)
  total = 0
  for i in a..b
    total += i**3
  end
  total
end


puts sum_of_cubes(4,7)
puts forced_sum_of_cubes(4,7)