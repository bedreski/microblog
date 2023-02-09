FactoryBot.define do 
  factory :status do 
    body { 'this is a short tweet' }
    FactoryBot.build(:user) #raises error: NoMethodError: undefined method `create=' for #<Status(...)
    # User must exist, I will find a way to declare :user correctly here

    #If is >> FactoryBot.build(:user)
    #raises errors above and: KeyError, factory "user" not registered
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
