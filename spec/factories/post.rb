require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.title { Faker::Lorem.words }
    f.body { Faker::Lorem.sentence }
  end
end
