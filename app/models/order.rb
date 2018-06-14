class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :user

  enum status: [:pending, :approved, :shiped, :success]

  validates :name, :address, :email, :pay_type, presence: true
end
