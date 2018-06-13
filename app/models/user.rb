class User < ApplicationRecord
  has_many :orders

  enum role: [:user, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :timeoutable, :rememberable, :trackable, :validatable
end
