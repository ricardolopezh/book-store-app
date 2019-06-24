class Store < ApplicationRecord
  validates :codename, presence: true, length: { maximum: 6 }
  validates :address, presence: true, length: { maximum: 120 }
  validates :phone, presence: true, length: { maximum: 15 }
end
