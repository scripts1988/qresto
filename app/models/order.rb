class Order < ApplicationRecord
  belongs_to :food_item
  validates :quantity, presence: true, numericality: true
  validates :customer_name, presence: true
  validates :customer_phone_number, presence: true
end
