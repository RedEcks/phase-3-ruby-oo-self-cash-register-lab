
class CashRegister 

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=0)
        @discount = discount
        @total = 0
        @items =[]
        @last_transaction=0

    end
 
    def add_item(title,price,quantity=1)
        @total +=price*quantity
        @last_transaction= price*quantity

        while quantity != 0
            @items = items.push(title)
            quantity-=1
        end


    end

    def apply_discount

        if discount > 0
            @total = total - (total*discount)/100
            "After the discount, the total comes to $#{total}."
        else
            "There is no discount to apply."
        end

    end

    def void_last_transaction
        @total= @total-@last_transaction
    end

end 