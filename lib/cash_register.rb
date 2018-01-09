
class CashRegister
attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, qty=1)
    # x = self.total
    self.total += price * qty
  end

end
