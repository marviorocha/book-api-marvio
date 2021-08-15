# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :author
  validates :title, :genre, :isbn, :description, :publisher, presence: true
end
