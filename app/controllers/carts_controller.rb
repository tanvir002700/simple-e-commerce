class CartsController < ApplicationController
  def show; end

  def destroy
    @cart.destroy
    redirect_to orders_url, notice: 'Cart was successfully destroyed.'
  end
end
