module Laby
  class Engine
    def initialize(game_set, players = [])
      @game_set = game_set
      @players = players
    end

    def run
      loop do
        @players.each do |player|
          system "clear" unless system "cls"
          @game_set.to_s(@players)
          greet_player(player)
          player.query_next_direction(@game_set)
          if player_wins?(player)
            puts "Well done! You did it !"
            exit
          end
        end
      end
    end

    private
    def player_wins?(player)
      @game_set.get_finish_coordinates.first == player.x &&
        @game_set.get_finish_coordinates.last == player.y
    end

    def greet_player(player)
      puts "#{player.name.upcase}, please enter your direction:"
      puts Laby::Player::DIRECTIONS
    end
  end
end
