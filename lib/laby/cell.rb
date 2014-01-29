module Laby
  class Cell
    attr_accessor :type

    TYPES = {
      empty:  ' ',
      wall:   '#',
      start:  'S',
      finish: 'F'
    }

    def initialize(type = TYPES[:empty])
      @type = type
    end

    def is_accessible?
      type != TYPES[:wall]
    end

    def is_start?
      type == TYPES[:start]
    end

    def is_finish?
      type == TYPES[:finish]
    end

    def to_s
      TYPES[type.to_sym]
    end
  end
end
