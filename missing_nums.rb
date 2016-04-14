def missing_nums(array)
  array = array.sort
  number = 1
  index = 0
  missing_nums = []
  #edit this number to change the size of array we are checking against
  while number <= 10000
    #index != 0 prevents the first and last number of the array being the same producing a false "true"
    #checks duplicate numbers in the sorted array, if a number is duplicated, move to next element 
    #returns false if the index position is greater than the length of the array
    if index != 0 && array[index] == array[index - 1]  && index < array.length
      index += 1
      #if the element of the array isn't equal to number, add the number to missing_nums and check the next number at the same index
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

def slower_missing_nums(array)
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

  