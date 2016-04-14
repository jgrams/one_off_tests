
    @array1 = (1..10000).to_a
    #Two distinct elements in array
    @array2 = [10000, 1, 1, 1, 10000, 10000, 1, 1, ,1 1]
  end
  
  #should return true because input array is missing nothing
  def tc_empty_array_missing_numbers
    missing_numbers(@array1).empty?
  end
  
  def tc_empty_array_slower_missing_numbers
    assert (slower_missing_numbers(@array1).empty?)
  end
  
  def tc_length_missing_numbers
    assert (missing_numbers(@array2).length == 9998)
  end
  
  def tc_elength_slower_missing_numbers
    assert (slower_missing_numbers(@array2).length == 9998)
  end
  
  def tc_functions_return_same_array
    assert_equal(missing_numbers(@array2), slower_missing_numbers(@array2))
  end

  def tc_functions_return_same_array
    assert_equal(missing_numbers(@array1), slower_missing_numbers(@array1)) 
  end

end