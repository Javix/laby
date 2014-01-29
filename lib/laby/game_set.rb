module Laby
  class GameSet
    def initialize(file_name)
      @file_name = file_name
      init_matrix(@file_name)
    end

    def to_s(players = [])
      File.readlines(@file_name).each_with_index do |line, line_index|
        line.chars.each_with_index do |char, char_index|
          x, y = char_index, line_index
          players.each_with_index do |player, index|
            break if char == Cell::TYPES[:start]
            char = index.to_s if player_present?(player, x, y)
          end
          print char
          @matrix[[x, y]] = Cell.new(char)
        end
      end
    end

    def is_accessible?(x, y)
      cell = @matrix[x, y]
      cell.type != Cell::TYPES[:wall]
    end

    def get_start_coordinates
      start = @matrix.select { |k, v| v.type.eql?(Cell::TYPES[:start])}
      raise "Start case not found" unless start
      start.keys.first
    end

    def get_finish_coordinates
      finish = @matrix.select { |k, v| v.type.eql?(Cell::TYPES[:finish])}
      raise "Finish case not found" unless finish
      finish.keys.first
    end

    private
    def init_matrix(file_name)
      @matrix = {}
      File.readlines(file_name).each_with_index do |line, line_index|
        line.chars.each_with_index do |char, char_index|
          @matrix[[line_index, char_index]] = Cell.new(char)
        end
      end
      @matrix
    end

    def player_present?(player, x, y)
      player.x == x && player.y == y
    end

  end
end
