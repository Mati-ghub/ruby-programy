input = gets.chomp 

hidden_letters = []
count = 0 
input.length.times do | i |
   hidden_letters.push('_')
    
end
puts hidden_letters.join 
while hidden_letters.include? "_"
  matching_letter = nil
  letter = gets.chomp 
  split_input = input.split("")
  
  split_input.each_with_index do |l, index|
    if split_input[index] == letter
      hidden_letters[index] = letter
      matching_letter = letter
    end
  end
  if matching_letter 
    count += 1
  else
    count -= 1
  end
  puts count
   
  puts hidden_letters.join
end
puts "Wygrałeś"


