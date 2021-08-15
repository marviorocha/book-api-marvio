class BookSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :genre, :description, :publisher, :published_date

  has_many :author
  
end
