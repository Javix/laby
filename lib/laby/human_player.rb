module Laby
  class HumanPlayer < Player

    def query_next_direction
      STDOUT.flush
      input = gets.chomp
      case input
      when DIRECTIONS[:left]
        self.x -= 1
      when DIRECTIONS[:up]
        self.y -= 1
      when DIRECTIONS[:right]
        self.x += 1
      when DIRECTIONS[:down]
        self.y += 1
      else
        puts "Unknown direction"
      end
    end

  end
end