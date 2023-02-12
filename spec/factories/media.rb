FactoryBot.define do
  factory :medium do
    kind { 1 }
    url { "https://wallpaperaccess.com/full/2971852.jpg" }
    status { create (:status) } 

    trait :empty_url do 
      url { nil }
    end 

    trait :not_empty_url do 
      url { "scheme://host" }
    end 

    #trait valid url in the future ;-;
    
  end
end
