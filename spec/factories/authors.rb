# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Faker::Number.within(range: 5..105) }
    subject { Faker::Educator.subject }
  end
end
