require('minitest/autorun')
require('minitest/rg')
require_relative('../stock.rb')

class TestStock < MiniTest::Test

def setup
@stock1 = Stock.new(item_description: '4 large plates', price: 25, id:'LP4')
@stock2 = Stock.new(item_description: '4 mugs', price: 5, id:'M4')
@stock3 = Stock.new(item_description: '25 piece cutlery set', price: 15, id: 'CT25')
@stock4 = Stock.new(item_description: '4 chrome table spoons', id:'TBSP4')

end

def test_if_stock_returns_descrition
  assert_equal('4 large plates', @stock1.item_description)
end

def test_if_stock_returns_id
  assert_equal('TBSP4', @stock4.id)
end



end 