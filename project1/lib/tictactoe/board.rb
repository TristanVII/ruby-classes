class Board
  @@WINNING_COMBINATIONS = [

    [1, 2, 3], # Top row
    [4, 5, 6], # Middle row
    [7, 8, 9], # Bottom row
    [1, 4, 7], # Left column
    [2, 5, 8], # Middle column
    [3, 6, 9], # Right column
    [1, 5, 9], # Diagonal (top-left to bottom-right)
    [3, 5, 7]  # Diagonal (top-right to bottom-left)
  ].freeze # Use .freeze to make the array constant
  # 0 1 2
  # 3 4 5
  # 6 7 8
  def initialize
    @board = default_board
  end

  def default_board
    { 1 => ' ', 2 => ' ', 3 => ' ', 4 => ' ', 5 => ' ', 6 => ' ', 7 => ' ', 8 => ' ', 9 => ' ' }
  end

  def reset
    @board = default_board
  end

  def update(position, player)
    player_val = player.even? ? 'X' : 'O'
    @board[position.to_i] = player_val
    @@WINNING_COMBINATIONS.each do |a, b, c|
      if @board.key?(a) && @board.key?(b) && @board.key?(c)
        return @board[a] != ' ' && @board[a] == @board[b] && @board[a] == @board[c]
      end
    end
  end

  def print_board # rubocop:disable Metrics/MethodLength
    output = ''
    @board.each do |key, value|
      output += value == ' ' ? key.to_s : value
      if (key % 3).zero? && key != 9

        output += "\n"
        output += '-----'
        output += "\n"
      elsif key != 9
        output += '|'
      end
    end
    puts output
  end

  def key_val(str)
    @board[str.to_i]
  end
end
