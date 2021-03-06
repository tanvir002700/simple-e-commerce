class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = current_user.orders
  end

  def show; end

  def new
    @order = Order.new
  end

  def create
    @order = current_user.orders.new(order_params.merge({line_items: @cart.line_items}))

    if @order.save
      @cart.delete
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  private
    def set_order
      @order = current_user.orders.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end
