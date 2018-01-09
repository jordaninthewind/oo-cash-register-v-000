require 'pry'

class CashRegister
attr_accessor :total, :discount

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

      return "After the discount, the total comes to #{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

end
