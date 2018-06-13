module Admin
  class OrdersController < AdminController
    before_action :set_order, only: [:show, :edit, :update, :destroy]

    def index
      @orders = Order.all
    end

    def show; end

    def edit; end

    def update
      respond_to do |format|
        if @order.update(order_params)
          format.html { redirect_to [:admin, @order], notice: 'Order was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @order.destroy
      respond_to do |format|
        format.html { redirect_to admin_orders_url, notice: 'Order was successfully destroyed.' }
      end
    end

    private
      def set_order
        @order = Order.find(params[:id])
      end

      def order_params
        params.require(:order).permit(:name, :address, :email, :pay_type)
      end
  end
end
