class Row

attr_reader(:slots, :id)

def initialize(id)
@id = id
@slots = {
  1 => [],
  2 => [],
  3 => [],
  4 => [],
  5 => []
}

end

def id
  return @id.upcase
end






end