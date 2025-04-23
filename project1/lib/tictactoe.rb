# frozen_string_literal: true

require_relative 'tictactoe/board'

class Gameloop # rubocop:disable Style/Documentation
  def initialize
    @state = 'STOP'
    @board = Board.new
  end

  def run(player1, player2) # rubocop:disable Metrics/MethodLength
    turn = 1
    @state = 'START'
    while @state == 'START'
      @board.print_board
      player = turn.even? ? player2 : player1
      puts "player: #{player}"
      response = position_response
      has_won = @board.update(response, turn)
      if has_won
        puts "player: #{player} has WON!!!"
        @board.reset
      end
      turn += 1
    end
  end

  def valid_cell?(str)
    value = @board.key_val(str)
    value == ' '
  end

  def position_response
    res = ''
    while res == ''
      puts 'Select an open cell'
      res = gets
      res = '' unless valid_cell? res
      puts "'#{res}' is not a valid cell or it is already occupied" if res == ''
    end
    res
  end

  def stop
    @state = 'STOP'
  end
end

game = Gameloop.new
game.run('me', 'computer')
