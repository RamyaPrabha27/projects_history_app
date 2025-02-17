FactoryBot.define do
  factory :conversation_history do
    project { nil }
    comment { "MyText" }
    status { "MyString" }
    user { nil }
  end
end
