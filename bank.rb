puts 'Welcome in International Bank'
puts ' Enter PIN Number'
pin = gets.chomp
accounts = {
  '1234' => ['Mateusz', 'Piłat', 10000],
  '1456' => ['Przemysław', 'Pełszyński', 20000000],
  '1448' => ['Sylwia', 'Grzanka', 1000000]
}
account = accounts[pin]
puts accounts.find {|k, v| k == pin }
puts 'Choose your options'
puts 'Choose "1" for payment or choose "2" for paycheck or "3" for exit'
input = nil

while input != '3' do
  input = gets.chomp 
  if input == '1' 
    puts "Podaj kwote do wpłaty"
    amount = gets.to_i
    if amount > 0 
      account[2] = account[2] + amount 
      puts "Twoje środki po wpłacie #{account[2]}"
    end
  elsif input == '2'
    puts "Podaj kwote jaka chcesz wypłacić"
    amount = gets.chomp.to_i
    if amount > 0
      account[2] = account[2] - amount
      puts "Twój stan konta po wypłacie #{account[2]}"
  end
end
end
def account_exit 
  input == '3'
end
