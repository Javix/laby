$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

file_name = ARGV.pop || ''
raise "Labyrinth file #{file_name}is not found!" unless File.exists?(file_name)
game_set = Laby::GameSet.new(file_name)
puts "Welcome to the Labyrinth"

players = Laby::Support.create_players
Laby::Support.set_on_start(players, game_set.get_start_coordinates)
engine = Laby::Engine.new(game_set, players)
engine.run
