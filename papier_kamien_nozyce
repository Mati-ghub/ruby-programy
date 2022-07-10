puts "Choose your weapon (Rock, Sicorios, Paper)" 

points = 0 

while points != 3
  input = gets.chomp.downcase
  enemy = ["rock", "sicorios", "paper"].sample
  puts enemy
  if input == "rock" && enemy == "sicorios"
    puts "You win"
    points +=1
  elsif input == "sicorios" && enemy == "paper"
    puts "You win"
    points +=1
  elsif input == "paper" && enemy == "rock"
    puts "You win"
    points +=1
  elsif input == "rock" && enemy == "paper"
    puts "You lose!"
    points -=1
  elsif input == "sicorios" && enemy == "rock"
    puts "You lose!"
    points -=1
  elsif input == "paper" && enemy == "sicorios"
    puts "You lose"
    points -=1
  else
    puts "Draw! Try again!"
  end
  puts points
end
