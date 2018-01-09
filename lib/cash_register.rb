require 'pry'

class CashRegister
attr_accessor :total, :discount, :last_transaction

@items = []

  def initialize(discount=nil)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end

  def items
    @items
  end

  def add_item(item, price, qty=1)
    @items << item
    @last_transaction = price * qty
    self.total += @last_transaction
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

  def void_last_transaction
    # self.total -= @last_transaction
    # self.items.pop
  end

end
