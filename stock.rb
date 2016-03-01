class Stock

attr_reader(:price, :item_description, :id, :tag)

def initialize(params)
@price = params[:price]
@item_description = params[:item_description]
@id = params[:id]
@tag = params[:tag]

end








end