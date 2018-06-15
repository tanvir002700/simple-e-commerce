class StoreController < ApplicationController
  def index
    @products =
      (if(params[:q].present?)
        Product.search(size: Product.count, query: { match: { title: params[:q]}}).records
      else
        Product.all
      end).paginate(page: params[:page], per_page: 12)
  end
end
