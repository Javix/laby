#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

file_name = ARGV.first || ''
raise "Labyrinth file is not found!" unless File.exists?(file_name)
laby = Laby::GameSet.new(file_name)
puts "Welcome to the Labyrinth:"

def create_players()
  players = []
  players << create_player('toto')
	players << create_player('yoyo')      
  players
end

def create_player(name)
	player = Laby::HumanPlayer.new(name)  
  player
end

def set_on_start(players, start_coordinates)
  players.each do |player|
    player.x = x_start(start_coordinates)
    player.y = y_start(start_coordinates)
  end
end

def x_start(coords)
	coords.first
end

def y_start(coords)
  coords.last
end

players = create_players
set_on_start(players, laby.get_start_coordinates)

laby.to_s(players)
