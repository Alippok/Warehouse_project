class Stock

attr_reader(:price, :description, :id, :tag)

def initialize(params)
@price = params[:price]
@description = params[:description]
@id = params[:id]
@tag = params[:tag]

end








end