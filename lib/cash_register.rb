
class CashRegister


    attr_accessor :discount, :items, :total, :last_t 


    def initialize(discount= 0)
        @discount = discount
        @total = 0
        @items = []
    end


    def add_item(title, price, quantity =1)
        self.total += price * quantity
        quantity.times do 
            items << title 
        end
        self.last_t = price * quantity
    end


    def apply_discount
        if discount != 0
            self.total = (total* ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end 
    end


    def void_last_transaction
        self.total = self.total - self.last_t
    end




end
