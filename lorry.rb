class Lorry

attr_reader(:hold)

def initialize(hold)
  @hold = hold

end

def hold_items
  items = []
  @hold.each{|item| items << item.description}
  return items
end


end