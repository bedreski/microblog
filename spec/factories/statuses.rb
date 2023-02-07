FactoryBot.define do 
  factory :status do 
    body { 'this is a short tweet' }
    create { :user }

    trait :is_empty do 
      body { nil }
    end 

    trait :above_max_length do 
      body {'wwwsk'*130} 
    end 
  end 
end 
