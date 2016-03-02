class Bay

attr_reader(:rows)

  def initialize(rows)
    @rows = rows
  end

  def all_ids
    ids = {}
    index = 1

    for row in @rows
      id1 = row.id
      ids["row#{index}"] = id1
      index += 1
      end  
    return ids
  end







end