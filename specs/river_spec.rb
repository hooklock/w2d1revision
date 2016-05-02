require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
require_relative('../river')
require_relative('../fish')

class TestRiver <MiniTest::Test

  def setup
    blinky_fish = Fish.new('Blinky')
    jp_fish = Fish.new('James Pond')
    dory_fish = Fish.new('Dory')
    cleo_fish = Fish.new('Cleo')
    marlin_fish = Fish.new('Marlin')

    fish = [blinky_fish, jp_fish, dory_fish, cleo_fish, marlin_fish]

    @river = River.new(fish)

    @po_bear = Bear.new('Gr', 'Panda', 'Po', [])
    @ben_bear = Bear.new('GRRRR', 'Grizzly', 'Ben', [])
  end

  def test_fish_taken_from_river
    assert_equal(['Blinky', 'James Pond', 'Dory'], @river.fish_taken_from_river(@po_bear))
    assert_equal(['Cleo', 'Marlin'], @river.fish_taken_from_river(@ben_bear))
    assert_equal('Gr', @river.fish_taken_from_river(@po_bear))
    assert_equal('GRRRR', @river.fish_taken_from_river(@ben_bear))
  end



end