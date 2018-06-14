class CartsController < ApplicationController
  def show; end

  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Cart was successfully destroyed.' }
    end
  end
end
