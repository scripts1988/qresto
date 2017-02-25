class OrdersController < ApplicationController
  def new
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build
  end

  def create
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build order_params

    if @order.save
      redirect_to menu_path , notice: @order.customer_name + ", thanks for your order!"
    else
      render 'new'
    end
  end

  def order_params
    params.require(:order).permit(:quantity, :customer_name, :customer_addr, :customer_phone_number)
  end
end
