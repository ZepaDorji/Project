class Order < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  validates :cid, length: { is: 11 }
  validates :contact_number, presence: true
  validates :quantity, presence: true
  validates :email, presence: true
  validates :address, length: {minimum: 10, maximum:50}

end
