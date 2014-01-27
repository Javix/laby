module Laby
  class RandPlayer < Player
    def query_next_direction(game_set)
      [:left, :up, :right, :down].sample
    end
  end
end
