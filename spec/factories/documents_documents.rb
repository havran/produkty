FactoryGirl.define do
  factory :document, class: 'Documents::Document' do
    title { Faker::Name.title }
  end
end
