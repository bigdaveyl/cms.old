FactoryBot.define do
  factory :message do
    name { FFaker::Name.name }
    email { FFaker::Internet.email }
    content  { FFaker::Lorem.paragraphs }
  end
end
