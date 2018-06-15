module Calculation
   extend ActiveSupport::Concern

  def total_price
    products.sum(:price)
  end
end
