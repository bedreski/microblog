FactoryBot.define do
  factory :user do
    handle { Faker::Lorem.characters(number: 8) }
    display_name  { 'KimM' }
    bio { 'some bio' }
    born_at { Date.today - 21.years }

    trait :handle_is_not_in_pattern do 
      handle { '* kim mi so *' }
    end 

    trait :under_min_age do
      born_at { Date.today - 12.years }
    end

  end
end
