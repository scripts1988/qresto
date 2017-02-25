class OrdersController < ApplicationController
  def new
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build
  end

  def show
    @order = Order.find(params[:id])
    @food_item = FoodItem.find(@order.food_item_id)
    @order_at = @order.created_at.localtime.strftime '%a, %d %B %Y %H:%M'
  end

  def create
    @item = FoodItem.find(params[:food_item_id])
    @order = @item.orders.build order_params
    @srv_fee = ServiceFee.find_by_description("Delivery")

    @order.total = @order.quantity * @item.price + @srv_fee.cost

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Thanks for your orders!' }
        format.json { render :show, status: :created, location: @order }
      else
        render 'new'
      end
    end
  end

  def order_params
    params.require(:order).permit(:quantity, :customer_name, :customer_addr, :customer_phone_number)
  end
end
