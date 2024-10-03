class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enum for roles
  enum role: { admin: 'admin', user: 'user', writer: 'writer' }

  # Associations
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
end
