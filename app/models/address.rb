class Address < ApplicationRecord
  belongs_to :user

  # Validations for address attributes
  validates :address_line_1, presence: true
  validates :address_line_2, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :postal_code, presence: true
end
