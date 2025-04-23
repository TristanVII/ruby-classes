class Board
  # 0 1 2
  # 3 4 5
  # 6 7 8
  def initialize
    @board = { 1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0, 9 => 0 }
  end

  def print_board # rubocop:disable Metrics/MethodLength
    output = ''
    @board.each do |key, value|
      output += value.to_s
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
end
