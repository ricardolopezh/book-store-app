class Book < ApplicationRecord
  belongs_to :store
  validates :title, presence: true, length: { maximum: 80 }
  validates :author, presence: true, length: { maximum: 80 }
  validates :year, presence: true, length: { maximum: 4 }
end
