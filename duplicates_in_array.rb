#return all the duplicate numbers in an array
array = [1,2,3,3]

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