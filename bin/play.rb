#!/usr/bin/env ruby
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'laby'

laby = Laby::GameSet.new('laby.txt')
puts "Welcome to the Labyrinth:"
laby.to_s
