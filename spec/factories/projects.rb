FactoryBot.define do
  factory :project do
    title { "MyString" }
    description { "MyText" }
    status { "MyString" }
    
    association :user, factory: :user
  end
end
