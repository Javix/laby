module Laby
  class GameSet
    def initialize(file_name)
      @file_name = file_name
    end

    def to_s
      File.open("laby.txt") do |file|
        #file.each_line {|line| puts "Got #{line.chomp}" }
        file.each_line do |line|
          line.each_char { |c| puts c }
        end
      end
    end

    def is_accessible?(x, y)

    end

    def get_start_coordinates
      [x, y]
    end

    def get_finish_coordinates

    end

  end
end
