class Book < ApplicationRecord
  belongs_to :author
  has_one_attached :book_image
  self.per_page = 1
end
