FactoryGirl.define do
  factory :gallery do
    description  { FFaker::CheesyLingo.title }
    title  { FFaker::CheesyLingo.words }
  end
end
