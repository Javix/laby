module Laby
  class RandPlayer < Player
    def query_next_direction
      # Commented as the below version using 'rand' is desireed by client
      #[:left, :up, :right, :down].sample
      directions = DIRECTIONS.keys
      directions[rand(directions.length)]
    end
  end
end
