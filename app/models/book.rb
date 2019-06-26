class Book < ApplicationRecord
  has_and_belongs_to_many :stores
  validates :title, presence: true, length: { maximum: 60 },
                       uniqueness: { case_sensitive: false }
  validates :author, presence: true, length: { maximum: 80 }
  validates :year, presence: true, length: { maximum: 4 }
  validates :quantity, presence: true
end
