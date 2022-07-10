class Game
  def initialize(player_name)
    @player_name = player_name
    @board = (0...16).map { ' ' }
  end

  def play
    puts "Hello #{player_name}"

    input = ''
    i = 1
    
    while input != 'exit' do
      symbol = i.even? ? 'X' : 'O'
      puts symbol.nil? ? "O needs to make move" : "#{symbol} needs to make move"
      input = gets.chomp
      next if board[input.to_i - 1] != ' '
        
      board[input.to_i - 1] = symbol

      return display_winner(symbol) if game_finished?(symbol)

      board_setup
      i += 1
    end
  end

  private

  attr_reader :player_name, :board

  def board_setup
    puts "#{board[0]} | #{board[1]} | #{board[2]} | #{board[3]}"
    puts "---------------"
    puts "#{board[4]} | #{board[5]} | #{board[6]} | #{board[7]}"
    puts "---------------"
    puts "#{board[8]} | #{board[9]} | #{board[10]} | #{board[11]}"
    puts "---------------"
    puts "#{board[12]} | #{board[13]} | #{board[14]} | #{board[15]}"
  end

  def win_combinations
    [
      [0,1,2,3], # top_row
      [4,5,6,7], # middle_row
      [8,9,10,11], # bottom_row
      [0,4,8,12], # left_column
      [1,5,9,13], # center_column
      [2,6,10,14], # center_column_two
      [3,7,11,15], # right_column
      [0,5,10,15], # left_diagonal
      [12,9,6,3], # right_diagonal
    ]
  end

  def game_finished?(symbol)
    result = false

    win_combinations.each do |comb|
      result = true if comb.map { |index| board[index] } == [symbol, symbol, symbol, symbol]
    end

    result
  end

  def display_winner(symbol)
    board_setup
    puts "#{symbol} has won!"
  end
end

table = Game.new('Mateusz')
table.play
