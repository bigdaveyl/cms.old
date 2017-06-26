FactoryGirl.define do
  factory :post do
    body  { FFaker::Lorem.paragraphs }
    title  { FFaker::CheesyLingo.title }
  end
end
