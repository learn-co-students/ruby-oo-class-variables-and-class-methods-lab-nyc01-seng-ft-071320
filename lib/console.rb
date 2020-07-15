require 'pry'
require_relative 'song.rb'

there = Song.new("There", "Me", "Rock")
hello = Song.new("Hello", "Me", "Rock")
goodbye = Song.new("Goodbye", "You", "Rock")
heyla = Song.new("Heyla", "the Beatles", "Pop")
binding.pry