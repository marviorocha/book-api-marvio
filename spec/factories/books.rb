# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    genre { Faker::Book.genre }
    publisher { Faker::Book.publisher }
    published_date { Faker::Date.between(from: '1950-01-01', to: Time.now) }
    description { 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et turpis quis risus.' }
    isbn { Faker::Barcode.isbn }
    author
  end
end
