FactoryBot.define do 
  factory :status do 
    body { 'this is a short tweet' }
    user { create(:user) } 
    
    trait :is_empty do 
      body { nil }
    end 

    trait :above_max_length do 
      body {'wwwsk'*130} 
    end

    trait :is_valid do
      body {'a'*300}
    end 
  end 
end 
