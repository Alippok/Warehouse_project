require('minitest/autorun')
require('minitest/rg')
require_relative('../row.rb')

class TestRow < MiniTest::Test

def setup
  @row1 = Row.new("A")

end

def test_see_id
  assert_equal("A", @row1.id)
end

def test_see_slots
  assert_equal({
      1 => [],
      2 => [],
      3 => [],
      4 => [],
      5 => []
    }, @row1.slots)
end






end 