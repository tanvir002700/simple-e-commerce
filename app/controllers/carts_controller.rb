class CartsController < ApplicationController
  def show; end

  def destroy
    @cart.destroy
    redirect_to store_index_path, notice: 'Cart was successfully destroyed.'
  end
end
