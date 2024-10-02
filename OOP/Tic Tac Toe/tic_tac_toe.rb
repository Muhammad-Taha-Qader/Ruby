def get_player(turn)
  turn ? "Player 1" : "Player 2"
end

def display_board(board)
  board.each_with_index do |line, i|
    line.each_with_index do |ele, j|
      print ele.nil? ? "  " : ele
      print "|" if j < 2
    end
    print "\r\n - - - - " if i < 2
    puts ""
  end
end

def update_board(location, board, turn)
  board[(location - 1) / 3][(location - 1) % 3] = turn ? "X" : "O"
end

def check_winner(board)
  winning_combinations = [
    [[0, 0], [0, 1], [0, 2]], # Row 1
    [[1, 0], [1, 1], [1, 2]], # Row 2
    [[2, 0], [2, 1], [2, 2]], # Row 3
    [[0, 0], [1, 0], [2, 0]], # Column 1
    [[0, 1], [1, 1], [2, 1]], # Column 2
    [[0, 2], [1, 2], [2, 2]], # Column 3
    [[0, 0], [1, 1], [2, 2]], # Diagonal 1
    [[0, 2], [1, 1], [2, 0]]  # Diagonal 2
  ]

  winning_combinations.each do |combination|
    if board[combination[0][0]][combination[0][1]] == board[combination[1][0]][combination[1][1]] &&
       board[combination[1][0]][combination[1][1]] == board[combination[2][0]][combination[2][1]] &&
       !board[combination[0][0]][combination[0][1]].nil?
      return board[combination[0][0]][combination[0][1]] # Return the winner ('X' or 'O')
    end
  end

  nil # Return nil if there is no winner
end

#---main-----

board = Array.new(3) { Array.new(3) }
turn = true

# until winner_exists?(board) do
while true
  display_board(board)

  print "#{get_player(turn)}'s turn, Enter location: "
  location = gets.chomp # This captures the input without a newline

  update_board(location.to_i, board, turn)

  unless check_winner(board).nil?
    puts "#{get_player(turn)} Wins"

    break
  end
  turn = !turn
end

# To setup rubocop:
# bundle init
# bundle add rubocop
# To run: bundle exec rubocop
#        bundle exec rubocop -a   AutoCorrect correctable
