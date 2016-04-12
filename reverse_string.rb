#1) Write a function that takes as input a string and returns that string with the characters reversed.

def reverse_string (string)
	array = string.split("")
  index = -1 #index of the array we start at
  reversed_array = []
	for i in array
    reversed_array.push(array[index])
    index = index - 1
	end
  reversed_string = reversed_array.join("")
  reversed_string
end

def reverse_string_with_reverse (string)
	array = string.split("")
  array.reverse.join("")
end

def reverse_string_with_pop (string)
  reversed_array = []
  array = string.split("")
  array.length.times { reversed_array.push(array.pop) }
  reversed_array.join("")
end