#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

laby = Laby::GameSet.new('laby.txt')
puts "Welcome to the Labyrinth:"
p1 = Laby::HumanPlayer.new('toto')
p1.x = 5
p1.y = 1

p2 = Laby::HumanPlayer.new('yoyo')
p2.x = 14
p2.y = 1
laby.to_s([p1,p2])
