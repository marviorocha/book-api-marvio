class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :subject
 
end
