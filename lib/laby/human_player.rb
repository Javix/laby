module Laby
  class HumanPlayer < Player

    def query_next_direction(game_set)
      puts "Enter a direction:"
      direction = case gets.chomp
        when 'j'
          :left
        when 'i'
          puts :up
        when 'k'
          puts :down
        when 'l'
          puts :right
        else
          raise "Uknown"
        end
        direction
    end
  end
end