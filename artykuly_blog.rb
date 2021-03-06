articles = {
  '1' => {title: 'UFC', content: "Mistrzostwa UFC", comments: [{ content: 'Naprawdę warto zobaczyć', author: 'mateusz.kleszcz@example.com'}, { content: 'Nawet spoko', author: 'marek.fila@gmail.com'}]},
  
  '2' => {title: 'FEN', content: "Sztuki walki", comments: [{ content: 'Konkretne walki', author: 'pawel.leper@gmail.com'}, { content: 'spoko', author: 'mateusz.pawlak@gmail.com'}]},
  
  '3' => {title: 'KSW', content: 'Walki', comments: [{ content: 'Super!!', author: 'kasia.cichopek@gmail.com'}, { content: 'Nawet fajne', author: 'michal.klaczkowski@gmail.com'}]},
  
  '4' => {title: 'ACA', content: 'K1', comments: [{ content: 'Polecam gorąco!!', author: 'paulina.pyzik@interia.com'}, { content: 'Nawet nawet ', author: 'przemyslaw.pelszynski@gmail.com'}]}
}

email = nil
number = nil
input = nil

puts 'Enter your email to login'
email = gets.chomp

puts 'Welcome on Mixed Martials Arts Blog'
puts "choose number of article what you want to read"

articles.each {|k, v| puts "#{k}  #{v[:title]}" }
number = gets.chomp
article = articles[number]
if article.find {|k, v| k == number }
  puts article[:title]
  puts article[:content]
end

puts "Add your comment"
input = gets.chomp

comment = {:content => input, :author => email}

if input.class == String
  article[:comments] << comment
end

puts "content, author"

puts article[:comments].map {|comment_hash| comment_hash[:content] + " " + comment_hash[:author]}
puts "Thanks for your comment"
puts "If you want edit your comment put 'E' or 'Enter' for end"
edit = gets.chomp

if edit == "E"
  puts "Change your comment"
  input = gets.chomp
  article[:comments].each do |a|
    if a[:author] == email
      a[:content] = input
    end
  end
  puts article[:comments].map {|comment_hash| comment_hash[:content] + " " + comment_hash[:author]}
end

puts "Thanks for comments!"
