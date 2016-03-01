require('minitest/autorun')
require('minitest/rg')
require_relative('../lorry.rb')
require_relative('../stock.rb')


class TestLorry < MiniTest::Test

def setup
  @stock1 = Stock.new(description: '4 large plates', price: 25, id:'LP4', tag:'H')
  @stock2 = Stock.new(description: '4 mugs', price: 5, id:'M4', tag:'H')
  @stock3 = Stock.new(description: '25 piece cutlery set', price: 15, id: 'CT25', tag:'H')
  @stock4 = Stock.new(description: '4 chrome table spoons', id:'TBSP4', tag:'H')
  @stock5 = Stock.new(description: 'Lego City Fire Engine', id:'LCFE', tag:'T')

  @stock_cache = [@stock1, @stock2, @stock3, @stock4, @stock5]

@lorry1 = Lorry.new(@stock_cache)

end

def test_if_lorry_can_show_items_in_hold
  assert_equal([@stock1, @stock2, @stock3, @stock4, @stock5], @lorry1.hold)
end

def test_if_lorry_can_show_individual_item_descriptions
  assert_equal(["4 large plates", "4 mugs", "25 piece cutlery set", "4 chrome table spoons", "Lego City Fire Engine"], @lorry1.hold_items)
end






end