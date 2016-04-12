#given an array of numbers, and a target number, find all the number pairs that would equal the number

test_array = [1,2,3,4,5,6,7,8,9,9,9]

number = 12

#returns and array of two element arrays that each sum to target number
def summer (array, target_number)
	#tracks number position in array 
	index = 0
	#array of two element arrays that is returned by function
	answer_array = []
	while index <= array.length
	 	array.each do |number|
			if (((array[index].to_i + array[number].to_i) == target_number) && index != number)
				answer_array.push([array[index], array[number]])
			end 
    end
    index += 1 
  end  	
  answer_array
end

puts summer(test_array, number)