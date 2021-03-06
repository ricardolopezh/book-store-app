class Store < ApplicationRecord
  has_many :assignments
  has_many :books, through: :assignments
  validates :codename, presence: true, length: { maximum: 6 },
                       uniqueness: { case_sensitive: false }
  validates :address, presence: true, length: { maximum: 120 }
  validates :phone, presence: true, length: { maximum: 20 }

  def to_s
    "#{codename} - #{address}"
  end
end
