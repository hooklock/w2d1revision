class River

  attr_accessor :river_name, :fish

  def initialize(name, fishes)
    @river_name = name
    @fish = fishes
  end

  def lose_fish
    return @fish.pop
  end


end