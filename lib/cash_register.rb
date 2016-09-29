require 'pry'
class CashRegister

  attr_accessor :discount, :total, :title, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << title
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if @discount == nil
      "There is no discount to apply."
    else
      self.total -= @discount*self.total/100
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
    #binding.pry
  end

  def void_last_transaction
    @total -= self.last_transaction
  end

end
#Pry.start
