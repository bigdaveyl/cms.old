FactoryGirl.define do
  factory :post do
    body  { FFaker::Lorem.paragraphs }
    title  { FFaker::CheesyLingo }
  end
end
