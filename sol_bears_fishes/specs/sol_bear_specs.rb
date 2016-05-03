require_relative('../sol_bear')
require('pry-byebug')
require_relative('../sol_river')
require_relative('../sol_fish')

yogi = Bear.new("Yogi", "grizzly")
bernard = Bear.new("Bernard", "polar")
fish1 = Fish.new('Nemo')
fish_array = [fish1]
river = River.new('Clyde', fish_array)

puts yogi.bear_name

puts yogi.roar
puts bernard.roar

yogi.take_fish(river)
puts yogi.tummy