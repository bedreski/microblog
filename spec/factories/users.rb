FactoryBot.define do
  factory :user do
    handle { 'Miso' }
    display_name  { 'KimM' }
    bio { 'some bio or empty' }
    born_at { Date.today - 21.years }
  end
end
