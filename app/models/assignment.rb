class Assignment < ApplicationRecord
	belongs_to :book
	belongs_to :store

	validates_uniqueness_of :store_id, scope: :book_id
	validates :quantity, presence: true
end
