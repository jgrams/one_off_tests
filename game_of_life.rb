class GameOfLife

  def grid(x, y)
    @world = []
    @x = x
    @y = y 
    y.times do |heigth| 
      x.times do |width|  
        @world.push([width, heigth, false])
      end 
    end
    @world
  end

#locations are being passed in with this format [2,3, false], [4,7, false]
  def create_cell(*location)
    for i in @world
      if location.any? {|location| i == location}
        i[2] = true
      end
    end
  end

  def life_continues(location)
    neighbors=0
    (-1..1).each do |xi| 
      (-1..1).each do |yi| 
        if xi !=0 || yi != 0 && (location[0] + xi >= 0 && location[0] + xi <= @x) && (location[1] + yi >= 0 && location[1] + yi <= @y) 
          if @world[ (location[0]+ location[1] * @x) + xi + (@x * yi)][2]
            neighbors += 1
          end
        end  
      end
    end
    if neighbors == 3 || ( @world[ (location[0]+ location[1] * @x)][2] && neighbors == 2 ) 
      true
      else
        false
    end
  end

  def run_world(rounds)
    rounds.times do |run|
      for i in @world
        if life_continues(i)
          i[2] = true
        else
          i[2] = false
        end
      puts @world  
      end
    end
  end

end


