module Laby
  class Player
    attr_reader :name
    attr_accessor :x, :y
    DIRECTIONS = {
                  left: 'j',
                  up:   'i',
                  right:'l',
                  down: 'k'
                  }

    def initialize(name)
      @name = name
    end
  end
end