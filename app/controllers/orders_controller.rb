class OrdersController < ApplicationController
    def new
        @order = Order.new
      end
    def create
        @order = Order.new#(order_params)
    
        respond_to do |formart|
          if @order.save
            format.html { redirect_to order_path, notice: 'Order was successfully created.' }
            
          else
            format.html { render :new }
            
          end
        end
      end
    
    
end
