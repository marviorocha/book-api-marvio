class Author < ApplicationRecord
has_many :BookAuthor
has_many :book, through: :author
end
