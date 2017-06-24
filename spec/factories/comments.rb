FactoryGirl.define do
  factory :comment do
    name { FFaker::Name.name }
    body  { FFaker::Lorem.paragraphs }
    referrer { FFaker::Internet.http_url }
    user_ip { FFaker::Internet.ip_v4_address }
  end
end
