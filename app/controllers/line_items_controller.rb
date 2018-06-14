class LineItemsController < ApplicationController
  def create
    product = Product.find(params[:product_id])
    @line_item = @cart.line_items.build(product: product)

    if @line_item.save
      redirect_to store_index_path, notice: 'Line item was successfully created.'
    end
  end

  private
    def line_item_params
      params.require(:line_item).permit(:product_id, :cart_id)
    end
end
