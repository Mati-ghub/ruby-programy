class Game
  def initialize(player_name)
    @player_name = player_name
    @floor = (0..90).map {'_'}
  end
    
  def play
    player_position = 0
    floor[player_position] = "🕺"
    puts "Hello #{player_name}"
    put_bonus
    put_obstacles
    put_bombs
    puts floor.join 
    points = 0 
    
    while !game_finished?(points)
      input = gets.chomp 
      pervious_position = player_position
      floor[pervious_position] = '_'
      current_position = player_position + input.to_i
      next if position_invaild?(current_position) 
      player_position = current_position
      puts points
      points = calculate_points(player_position, points) 
      floor[player_position] = "🕺" 
      puts floor.join
      puts points
    end
    puts "Game Over you have #{points} points"
  end

    
  private
  
  attr_reader :player_name, :floor, :player_position 

  def put_obstacles
    6.times.map {rand(1..90)}.each {|number| floor[number] = "-"}  
  end
  
  def put_bonus
    6.times.map {rand(1..90)}.each {|number| floor[number] = "+"}
  end

  def put_bombs
    4.times.map {rand(1..90)}.each {|number| floor[number] = "#"}
  end

  def calculate_points(player_position, points)
    return points + 1 if floor[player_position] == "+"  
    return points - 1 if floor[player_position] == "-"
    return -5 if floor[player_position] == "#" 
    points
  end
    
  def position_invaild?(position)
    position_invaild = position > 90
    puts "Nie ma takiego pola, maksymalne to 90" if position_invaild  
    position_invaild 
  end

  def game_finished?(points)
    floor[90] == '🕺' || points == -5
    
  end
end

table = Game.new('Mateusz')
table.play
