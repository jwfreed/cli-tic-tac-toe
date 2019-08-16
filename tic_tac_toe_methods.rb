WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
].freeze

def play(board)
  turn(board) until over?(board)
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "It's a draw!"
  end
end

def display_board(board)
  puts "#{board[0]} | #{board[1]} | #{board[2]}"
  puts '----------'
  puts "#{board[3]} | #{board[4]} | #{board[5]}"
  puts '----------'
  puts "#{board[6]} | #{board[7]} | #{board[8]}"
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] &&
      board[combo[1]] == board[combo[2]] &&
      position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? { |token| token == 'X' || token == 'O' }
end

def draw?(board)
  !won?(board) && full?(board)
end