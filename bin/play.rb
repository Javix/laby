#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

file_name = ARGV.first || ''
raise "Labyrinth file is not found!" unless File.exists?(file_name)
laby = Laby::GameSet.new(file_name)
puts "Welcome to the Labyrinth:"

def players
  players = []
  players << create_player('toto', 5, 1 )
	players << create_player('yoyo', 14, 1)  
  puts "players: #{players.inspect}"
  players
end

def create_player(name, x, y)
	player = Laby::HumanPlayer.new(name)
  player.x = x
  player.y = y
  player
end

laby.to_s(players)
