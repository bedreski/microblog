FactoryBot.define do
  factory :medium do
    kind { 1 }
    url { "https://wallpaperaccess.com/full/2971852.jpg" }
    status { 1 }
    create { :status } #media needs a status

    trait :url_is_secure do 
      URI.parse(url).scheme = 'https' 
    end 

    #can I call model method here inside a 'trait' (for 'kind' attribute test)?

  end
end
