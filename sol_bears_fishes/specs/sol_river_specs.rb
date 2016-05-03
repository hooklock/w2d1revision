require_relative('../sol_river')
require_relative('../sol_fish')


  nemo = Fish.new("Nemo")
  sinky = Fish.new("Sinky")
  floaty = Fish.new("Floaty")

  fishes = [nemo, sinky, floaty]

  river = River.new("Clyde", fishes)

  array_of_fishes = river.fish_in_river

  for fish in array_of_fishes
    pust fish.fish_name
  end
