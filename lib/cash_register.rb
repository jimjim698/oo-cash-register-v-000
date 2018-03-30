class CashRegister
attr_accessor :total, :discount

@@items = []


def initialize(discount = 0)
  @total = 0
  @discount = discount
  @cart = []

end

def add_item(item, price,quant = 1)
    all_items = {}
    all_items[:item] = item
    all_items[:price] = price
    all_items[:quantity] = quant
    @cart<< all_items
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
  complete_list = []
  @cart.each do |item|
    item.each do |name, value|
      complete_list<< :quantity * :item
    end
  end
  complete_list


end

def void_last_transaction
  @cart.clear
  @total = 0
  @cart
end

end
