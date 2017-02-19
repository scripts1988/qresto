class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 } 
  has_many :orders

  def image_url_or_default
    if imgage_url.present?
     imgage_url
    else
      "http://loremflickr.com/320/240/food"
    end
  end
end
