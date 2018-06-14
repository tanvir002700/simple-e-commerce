class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :user

  enum status: [:pending, :approved, :shiped, :success]
end
