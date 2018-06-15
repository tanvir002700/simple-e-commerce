module Admin
  class ProductsController < AdminController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    def index
      @products = Product.paginate(page: params[:page], per_page: 10)
    end

    def show; end

    def new
      @product = Product.new
    end

    def edit; end

    def create
      @product = Product.new(product_params)

      if @product.save
        redirect_to [:admin, @product], notice: 'Product was successfully created.'
      else
        render :new
      end
    end

    def update
        if @product.update(product_params)
          redirect_to [:admin, @product], notice: 'Product was successfully updated.'
        else
          render :edit
        end
    end

    def destroy
      @product.destroy
      redirect_to admin_products_url, notice: 'Product was successfully destroyed.'
    end

    private
      def set_product
        @product = Product.find(params[:id])
      end

      def product_params
        params.require(:product).permit(:description, :title, :img_url, :price)
      end
  end
end
