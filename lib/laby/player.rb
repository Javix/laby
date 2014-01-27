module Laby
  class Player
    attr_reader :name
    attr_accessor :x, :y

    def initialize(name)
      @name = name
    end
  end
end