FactoryBot.define do
  factory :event do
    association :user
    
    sequence(:title) { |n| "Event №#{n}" }
    description { |n| "Description" }
    address { 'Moscow' }
    datetime { Time.now }
  end
end
