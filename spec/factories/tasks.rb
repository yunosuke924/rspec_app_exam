FactoryBot.define do
  factory :task do
    title { "MyString" }
    status { 1 }
    deadline { "2019-08-10 16:07:46" }
    completion_date { "2019-08-10" }
    project { nil }
  end
end
