# 1) Write a function that takes as input a string and returns that string with the characters reversed.

def reverse_string (string)
  array = string.split("")
  index = -1 #index of the array we start at
  reversed_array = []
  for i in array
    reversed_array.push(array[index])
    index = index - 1
  end
  reversed_array.join("")
end

#one liner using ruby's built in reservse method
def reverse_string_with_reverse (string)
  string.split("").reverse.join("")
end


def reverse_string_with_pop (string)
  reversed_array = []
  array = string.split("")
  #push the last element of the array to reversed_array using pop
  array.length.times { reversed_array.push(array.pop) }
  reversed_array.join("")
end

# 2) Write a function that, given an unsorted array of positive integers between 1 and 10,000,
# returns all of the values from the actual range of 1 to 10,000 that the input array is missing.
#
# input array: any length, possible repeated numbers, i.e. [999, 1, 2342, 1, 1, 5, 6, 6, 7, .. ]

def missing_numbers(array)
  array = array.sort
  number = 1
  index = 0
  missing_nums = []
  while number <= 10000
    #if the first and last element of the array are the same index != 0 prevents prevents a false "true"
    #checks duplicate numbers in the sorted array, if a number is duplicated, move to next element 
    #returns false if the index position is greater than the length of the array
    if index != 0 && array[index] == array[index - 1]  && index < array.length
      index += 1
      #if the element of the array at index isn't equal to number, add the number to missing_nums and check the next number at the same index
    elsif array[index] != number
        missing_nums.push(number)
        number += 1
      #if number is in the array, check the next number at the next index
      else array[index] == number
        number += 1
        index += 1
    end
  end
  missing_nums
end

#This is simpler code, but way slower because code traverses the array for every number
def slower_missing_numbers(array)
  number = 1
  missing_nums = []
  while number <= 10000
    if array.include?(number)
     number += 1
    else
      missing_nums.push(number)
      number += 1
    end
  end
  missing_nums
end

#all tests should return true
#full array, missing nums functions should return a empty array  
@array1 = (1..10000).to_a
#Two distinct elements in array
@array2 = [10000, 1, 1, 1, 10000, 10000, 1, 1, 1, 1]

#should return true because input array is missing nothing
def tc_empty_array_missing_numbers
  missing_numbers(@array1).empty?
end

def tc_empty_array_slower_missing_numbers
  slower_missing_numbers(@array1).empty?
end

def tc_length_missing_numbers
  missing_numbers(@array2).length == 9998
end

def tc_length_slower_missing_numbers
  slower_missing_numbers(@array2).length == 9998
end

def tc_functions_return_same_array(array)
  missing_numbers(array) == slower_missing_numbers(array)
end

puts tc_empty_array_missing_numbers
puts tc_empty_array_slower_missing_numbers
puts tc_length_missing_numbers
puts tc_length_slower_missing_numbers
puts tc_functions_return_same_array(@array1)
puts tc_functions_return_same_array(@array2)