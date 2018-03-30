class CashRegister
attr_accessor :total, :discount


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @cart = []

end

def add_item(item, price,quant = 1)
    @cart<< item
    price_with_quantity = price * quant
    @total = @total + price_with_quantity
end

def apply_discount
  float_discount = (@discount*0.01*@total).to_i
  @total = @total - float_discount
success = "After the discount, the total comes to $#{@total}."
error = "There is no discount to apply."
if @discount>0
   success
else
   error
end
end

def items
  items= []
@cart.each do |item|
  if items.include?(item)
    false
  else
    items<< item
  end
  items
end


end
