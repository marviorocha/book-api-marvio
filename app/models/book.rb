class Book < ApplicationRecord
  belongs_to :author
  validates :title, :genre, :isbn, :description, presence: true
end
