#extremely brute force solving of this problem, look into node spanning algorithms
#like minimum spanning tree, DFS, Dijkstra for more scaleable solutions
class TSP
  def initialize(cities)  
    # Instance variables  
    @cities = cities  
  end  
  #returns a float of distance between current position and ending position
  #where current position and ending position should be two element arrays
  def distance_calculator(starting_position, ending_position)
    x_change = (starting_position[0] - ending_position[0])
    y_change = (starting_position[1] - ending_position[1])
    Math.sqrt(x_change*x_change + y_change*y_change)
  end
  #grid and cities are both arrays of arrays
  #goal is to minimize moves_counter which count distance
  def move_count(array_of_arrays)
    position = [0, 0]
    total_distance = 0
    array_of_arrays.each do |array|
      total_distance += distance_calculator(position, array)
      position = array
    end
    #count the move back to the [0,0] ending position
    total_distance += distance_calculator(position, [0,0])
    total_distance
  end

  def factorial(n)
    if n == 0
      1
    else
      n * factorial(n-1)
    end
  end

  #takes an array of arrays as an argument
  #returns an array of all possible arrangement of cities
  def shuffle_cities(array)
    @array_of_city_arrangements = []
    while @array_of_city_arrangements.size < factorial(array.size) 
      x = array.shuffle
      if !(@array_of_city_arrangements.include?(x))
        @array_of_city_arrangements.push(x)

      end
    end  
    #array of array of two element arrays
    @array_of_city_arrangements
  end

  #returns the minimum possible distance for travelling
  def dist(cities)
    @possible_distances = []
    shuffle_cities(cities).each do |array_of_array| 
      @possible_distances.push(move_count(array_of_array))
    end
    @possible_distances.min
  end

  #returns the order the cities should be visited
  #looks at the index position of the minimum distance, and returns the
  #element at the same index position in the array of possible city routes
  #must be run after dist function or will raise an error
  def route
    index = @possible_distances.index(@possible_distances.min)
    @array_of_city_arrangements[index]
  end
end
