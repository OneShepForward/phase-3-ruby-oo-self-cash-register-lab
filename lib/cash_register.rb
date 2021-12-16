require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = [title, price, quantity]
        self.total = total + (quantity * price)
        while quantity > 0 do
            self.items << title
            quantity -= 1
        end
        puts "That cost you #{price}"
    end

    def apply_discount
        if self.discount.zero?
            "There is no discount to apply."
        else
            self.total = total * (100 - discount) / 100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        title, price, quantity = self.last_transaction
        self.total = total - (quantity * price)
        while quantity > 0
            self.items.pop
            quantity =- 1
        end
    end

end

binding.pry