class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items
  belongs_to :user

  include Calculation

  enum status: [:pending, :approved, :shiped, :success]

  validates :name, :address, :email, :pay_type, presence: true
end
