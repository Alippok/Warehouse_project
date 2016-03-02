require('minitest/autorun')
require('minitest/rg')
require_relative('../bay.rb')
require_relative('../row.rb')
require_relative('../stock.rb')


class TestBay < MiniTest::Test

def setup
@stock1 = Stock.new(description: '4 large plates', price: 25, id:'LP4', tag:'H')
@stock2 = Stock.new(description: '4 mugs', price: 5, id:'M4', tag:'H')
@stock3 = Stock.new(description: '25 piece cutlery set', price: 15, id: 'CT25', tag:'H')
@stock4 = Stock.new(description: '4 chrome table spoons', id:'TBSP4', tag:'H')
@stock5 = Stock.new(description: 'Lego City Fire Engine', id:'LCFE', tag:'T')

@row1 = Row.new("H")
@row2 = Row.new("T")
@rows = [@row1, @row2]
@bay = Bay.new(@rows) #Check bay and row can take a stock item as an argument and place it in correct row.
#Then the warehouse is the one that calls all of the methods to move variables into the correct parameters

end

def test_return_rows_ids
  assert_equal({"row1" => "H", "row2" => "T"}, @bay.all_ids)
end




end 