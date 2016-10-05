#return all the duplicate numbers in an array
#an argument like [1,2,3,3] should return [3]

#solution that doesn't take up space in memory
def return_duplicates_in_array(array)
  array.sort.each_with_index  do |item, index|
    #removes the numbers that are the same as proceedng numbers
    if item == array[index-1]
      array -= array[index]
      #keeps numbers that are the same as the subsequent number
      elsif item == array[index+1]
      #removes numbers that are not the same as subsequent numbers
      else array -= array[index]
  end
end 

#more readable solution that takes up some memory
#def slower because we iterate every time we run count
def second_return_duplicates_in_array(array)
  returned_array = []
  array.each do |item|
    if array.count(item) > 1 && !returned_array.include?(item)
      returned_array.push(item)
  end
  returned_array
end 