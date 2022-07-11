puts 'Welcome in International Bank'
accounts = {
  '2122' => {name: "Mateusz Piłat", amount: 10000},
  '1345' => {name: "Michał Kleszcz", amount: 20000},
  '1122' => {name: "Mateusz Żak", amount: 30000},
  '1224' => {name: "Sylwia Grzanka", amount: 40000}
}

input = nil
account = nil

while input != '4'
  if account.nil? 
    puts 'Enter PIN Number'
    pin = gets.chomp 
    account = accounts[pin]
    puts account[:name] 
  end
  puts 'Choose your options'
  puts "Choose '1' for payment or choose '2' for paycheck or '3' for logout or '4' for exit"
  input = gets.chomp 
  if input == '1' 
    puts 'Podaj kwote do wpłaty'
    amount = gets.to_i
    if amount > 0 
      account[:amount] += amount 
      puts "Twoje środki po wpłacie #{account[:amount]}"
    end
  elsif input == '2'
    puts 'Podaj kwote jaka chcesz wypłacić'
    amount = gets.chomp.to_i
    if amount > 0
      account[:amount] -= amount
      puts "Twój stan konta po wypłacie #{account[:amount]}"
    end  
  else input == '3'
    account = nil
  end
end
