# frozen_string_literal: true

require_relative 'tictactoe/board'

class Gameloop # rubocop:disable Style/Documentation
  def initialize
    @state = 'STOP'
    @board = Board.new
  end

  def run
    @state = 'START'
    while @state == 'START'
      @board.print_board
      response = gets
      puts response
    end
  end

  def stop
    @state = 'STOP'
  end
end

game = Gameloop.new
game.run
