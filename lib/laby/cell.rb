module Laby
  class Cell
    attr_accessor :type

    TYPES = {
      empty:  ' ',
      wall:   '#',
      start:  'S',
      finish: 'F'
    }

    def initialize(type = :empty)
      @type = type
    end

    def is_accessible?
      type != :wall
    end

    def is_start?
      type == :start
    end

    def is_finish?
      type == :finish
    end

    def to_s
      TYPES[type.to_sym]
    end
  end
end
