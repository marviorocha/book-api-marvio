class Book < ApplicationRecord
has_many :BookAuthor
has_many :author, through: :book
end
