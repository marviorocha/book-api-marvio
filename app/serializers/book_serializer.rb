class BookSerializer < ActiveModel::Serializer
  
  attributes :id, :title, :genre, :description, :publisher, :author_id

  has_many :author
  
end
