class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :images
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :category_id, presence: true

end
