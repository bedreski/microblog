FactoryBot.define do
  factory :user do
    handle { 'John' }
    display_name  { 'Doe' }
    bio { 'some bio or empty' }
    born_at { Date.today }
  end
end
