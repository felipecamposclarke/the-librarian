# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
      association :editorial
      title 'Faker Name'
      original_title 'Faker Original Title'
      translation Faker::Name.name
      edition 1
      edition_date Faker::Date.forward(10)
      edition_place 'Barcelona'
      publication_year 2005
      isbn Faker::Code.isbn
  end
end
