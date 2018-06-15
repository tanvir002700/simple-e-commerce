class StoreController < ApplicationController
  def index
    @products = Product.search((params[:q].present? ? params[:q] : '*'))
                       .records.paginate(page: params[:page], per_page: 10)

  end
end
