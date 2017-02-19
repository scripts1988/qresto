class FoodItem < ApplicationRecord
  belongs_to :section
  validates :name, :price, presence: true
  validates :price, :numericality => { :greater_than_or_equal_to => 0 } 
  has_many :orders

  def image_url_or_default
      imgage_url || "https://cdn.pixabay.com/photo/2017/02/15/10/39/salad-2068220_1280.jpg"
  end
end
