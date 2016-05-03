class Bear

  attr_accessor :bear_name, :type, :tummy


  def initialize(name, type)
    @bear_name = name
    @type = type
    @tummy = []
  end

  def roar
    if @type == "grizzly"
    return "#{@bear_name} GRRRRR"
    else
      return "#{@bear_name} Ooo Errr"
    end  
  end

  def take_fish(river)
    # fish = river.lose_fish()
    @tummy << river.lose_fish()

  end

end

# yogi = Bear.new("Yogi", "grizzly")