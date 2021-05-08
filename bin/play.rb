# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

# Entry point of the application

# To start, run from the project root as:
# ruby bin/play.rb {maze_text_file}

# Example

# ruby bin/play.rb laby.txt

# First reads the text file to initilize the maze.
# Then create players.
# And displays the created maze with a greeting for the first player

file_name = ARGV.pop || ''
unless File.exist?(file_name)
  raise "Labyrinth file #{file_name} is not found! \n You can use 'laby.txt' as example available in the code source"
end

game_set = Laby::GameSet.new(file_name)
puts 'Welcome to the Labyrinth'

players = Laby::Support.create_players
Laby::Support.set_on_start(players, game_set.get_start_coordinates)
engine = Laby::Engine.new(game_set, players)
engine.run
