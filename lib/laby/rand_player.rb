module Laby
  class RandPlayer < Player
    def query_next_direction(game_set)
      # Commented as the below version using 'rand' is desireed by client
      #[:left, :up, :right, :down].sample
      directions = [:left, :up, :right, :down]
      directions[rand(directions.length)]      
    end
  end
end
