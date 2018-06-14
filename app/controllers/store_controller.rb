class StoreController < ApplicationController
  def index
    @products = Product.search((params[:q].present? ? params[:q] : '*')).records
  end
end
