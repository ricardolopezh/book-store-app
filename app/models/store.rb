class Store < ApplicationRecord
  has_and_belongs_to_many :stores
  validates :codename, presence: true, length: { maximum: 6 },
                       uniqueness: { case_sensitive: false }
  validates :address, presence: true, length: { maximum: 120 }
  validates :phone, presence: true, length: { maximum: 20 }
end
