FactoryBot.define do
  factory :project do
    name { Faker::Lorem.word }
    status { rand(3) }
    from = Date.parse("2019/01/01")
    to   = Date.parse("2019/12/31")
    release_date { Random.rand(from..to) }
  end
end
