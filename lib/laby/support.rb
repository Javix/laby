module Laby
  class Support
    def self.get_x(coords)
      coords.first
    end
    
    def self.get_y(coords)
      coords.last
    end
    
    def self.create_players()
      players = []
      players << create_player('toto')
      players << create_player('yoyo')      
      players
    end    

    def self.set_on_start(players, start_coordinates)
      players.each do |player|
        player.x = get_x(start_coordinates)
        player.y = get_y(start_coordinates)
      end
    end
    
    private
    def self.create_player(name)
      player = Laby::HumanPlayer.new(name)  
      player
    end
  end
end
