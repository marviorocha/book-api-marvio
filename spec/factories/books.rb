FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    genre { Faker::Book.genre }
    publisher { Faker::Book.publisher }
    published_date {Faker::Date.between(from: '1950-01-01', to: '2020-01-01')}
    description { "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et turpis quis risus." }
    isbn { Faker::Barcode.isbn }
    author

    trait :with_author do
  
    after(:create) do |author|
      create(:book, author: author)
    end
  
  end

  end
end

 
 