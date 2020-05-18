class Listing < ApplicationRecord
  belongs_to :category
  has_one_attached :picture
  belongs_to :user
  validates :title, presence: true
  has_many :cart_listings
  has_many :carts, through: :cart_listings
end
