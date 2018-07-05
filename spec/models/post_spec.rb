require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:myuser) { FactoryBot.build(:user) }
  it "has a valid factory" do
    expect(FactoryBot.build(:post, user: myuser)).to be_valid
  end
  it "is not valid without a title" do
      expect(FactoryBot.build(:post, title: nil, user: myuser)).to_not be_valid
  end
  it "is not valid without a body" do
      expect(FactoryBot.build(:post, body: nil, user: myuser)).to_not be_valid
  end
  it "is not valid without a user" do
      expect(FactoryBot.build(:post)).to_not be_valid
  end
end
