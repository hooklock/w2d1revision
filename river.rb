class River
  
  def initialize(fish)
    @population = fish
  end

  def fish_taken_from_river(bear)
    if @population.count < 1
      return bear.roar
    else
      bear.tummy << @population.pop.fish_name
      return bear.tummy
    end  
  end


end

#Tks Seumus, clarified method