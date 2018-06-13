module Admin
  class OrdersController < AdminController
    before_action :set_order, only: [:show, :edit, :update, :destroy]

    def index
      @orders = Order.all
    end

    def show; end

    def edit; end

    def update
      if @order.update(order_params)
        redirect_to [:admin, @order], notice: 'Order was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @order.destroy
      redirect_to admin_orders_url, notice: 'Order was successfully destroyed.'
    end

    private
      def set_order
        @order = Order.find(params[:id])
      end

      def order_params
        params.require(:order).permit(:name, :address, :email, :pay_type, :status)
      end
  end
end
