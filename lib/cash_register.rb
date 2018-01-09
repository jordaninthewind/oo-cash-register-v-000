require 'pry'

class CashRegister
attr_accessor :total, :discount

@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def add_item(item, price, qty=1)
    self.total += price * qty
  end

  def apply_discount
    # binding.pry
    if @discount != nil
      self.total -= self.total * (@discount * 0.01)
      self.total = self.total.to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end

end
