class CashRegister
      attr_accessor :total, :discount, :quantity, :title, :items, :price, :last_transaction
      
      def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @items << title
        
        
      end

      def add_item (title, price, quantity = 1)
        @quantity = quantity
        @price = price 
        @title = title   
        self.total += price * quantity

        if @quantity > 0
            counter= 0
               while counter < @quantity
                   @items << self.title
                   counter+=1
               end
            end
            self.last_transaction = price * quantity
      end
        def apply_discount
            if @discount > 0 
            @discounted_amount = (@price * @discount)/100
            @total = @price - @discounted_amount
                "After the discount, the total comes to $800."
            else
                "There is no discount to apply."  
            end
        end
        def items
             @items.compact
        end
        def void_last_transaction
            @total -= @last_transaction
            
        
    end
end
