
class CashRegister

    attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        if discount == 0 
            self.total = total + (quantity * price)
        else
            self.total = total + (quantity * price * discount / 100)
        # self.total = total + (quantity * price) * discount
        end
    end

end
