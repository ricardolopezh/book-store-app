class Book < ApplicationRecord
  has_many :assignments
  has_many :stores, through: :assignments
  validates :title, presence: true, length: { maximum: 80 }
  validates :author, presence: true, length: { maximum: 80 }
  validates :year, presence: true, length: { maximum: 4 }

  def to_s
    "#{title} - #{author}"
  end
end
