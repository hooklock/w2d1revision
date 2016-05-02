require('minitest/autorun')
require('minitest/rg')
require_relative('../bears')
# require_relative('../river')
# require_relative('../fish')
#Not needed as River is the master (Tks Seumus)


class TestBear <MiniTest::Test
  def test_bear_roar
    po_bear = Bear.new('Gr', 'Panda', 'Po', [])
    ben_bear = Bear.new('GRRRR', 'Grizzly', 'Ben', [])
    assert_equal('Gr', po_bear.roar)
    assert_equal('GRRRR', ben_bear.roar)
  end


end
      