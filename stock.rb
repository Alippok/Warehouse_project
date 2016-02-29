class Stock

attr_reader(:price, :item_description, :id)

def initialize(params)
@price = params[:price]
@item_description = params[:item_description]
@id = params[:id]

end








end