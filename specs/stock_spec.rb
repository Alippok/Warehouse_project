require('minitest/autorun')
require('minitest/rg')
require_relative('../stock.rb')

class TestStock < MiniTest::Test

def setup
@stock1 = Stock.new(description: '4 large plates', price: 25, id:'LP4', tag:'H')
@stock2 = Stock.new(description: '4 mugs', price: 5, id:'M4', tag:'H')
@stock3 = Stock.new(description: '25 piece cutlery set', price: 15, id: 'CT25', tag:'H')
@stock4 = Stock.new(description: '4 chrome table spoons', id:'TBSP4', tag:'H')
@stock5 = Stock.new(description: 'Lego City Fire Engine', id:'LCFE', tag:'T')

end

def test_if_stock_returns_descrition
  assert_equal('4 large plates', @stock1.description)
end

def test_if_stock_returns_id
  assert_equal('TBSP4', @stock4.id)
end

def test_if_stock_returns_tag
  assert_equal('T', @stock5.tag)
end



end 