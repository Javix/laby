module Laby
  class GameSet
    def initialize(file_name = 'laby.txt')
      @file_name = file_name
      init_matrix(@file_name)
    end

    def to_s
      File.open(@file_name) do |file|
        file.each_line { |line| puts line}        
      end
    end

    def is_accessible?(x, y)
      cell = @matrix[x, y]
      cell.type != Cell::TYPES[:wall]
    end

    def get_start_coordinates
      start = @matrix.select { |k, v| v.type.eql?(Cell::TYPES[:start])}.first
      raise "Start case not found" unless start
      start
    end

    def get_finish_coordinates
      finish = @matrix.select { |k, v| v.type.eql?(Cell::TYPES[:finish])}.first
      raise "Finish case not found" unless finish
      finish
    end
    
    private
    def init_matrix(file_name)
      @matrix = {}
      File.open(file_name) do |file|
        file.each_line do |line|          
          line.chars.each_with_index do |char, index|
            @matrix[[file.lineno-1, index]] = Cell.new(char)
          end
        end
      end
      @matrix
    end

  end
end
