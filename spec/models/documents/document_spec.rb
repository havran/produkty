require 'rails_helper'

RSpec.describe Documents::Document, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:document)).to be_valid
  end

  it "is invalid without a title" do
    document = FactoryGirl.build(:document, title: nil)
    expect(document).not_to be_valid
  end
end
