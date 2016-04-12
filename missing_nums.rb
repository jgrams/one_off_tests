def missing_nums(array)
  array = array.sort
  number = 1
  index = 0
  missing_nums = []
  for i in array
    if index != 0 && i == array[index - 1]
      index += 1
      elsif i != number
      	missing_nums.push(number)
      	number += 1
      else i == number
        number += 1
        index += 1
    end
  end
  while number <= 10000
    missing_nums.push(number)
    number += 1
  end
  missing_nums
end

array = [3,1,1,2,4,5,1]
puts missing_nums(array)
  