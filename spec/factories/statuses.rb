FactoryBot.define do 
  factory :status do 
    body { 'this is a short tweet' }

    trait :is_empty do 
      body { nil }
    end 

    trait :above_max_length do 
      body {'The majority of abstracts are informative. 
            While they still do not critique or evaluate a work, 
            they do more than describe it. A good informative 
            abstract acts as a surrogate f the work itself. 
            That is, the researcher presents and explains all 
            the main arguments and the important results and 
            evidence in the paper. An informative abstract 
            includes the information that can be found in a 
            descriptive abstract [purpose, methods, scope] but
            it also includes the results and conclusions of 
            the research and the recommendations of the author. 
            The length varies according to discipline, but an 
            informative abstract is usually no more than 300 
            words in length.'} #656 words - source: https://libguides.usc.edu/writingguide 
    end 
  end 
end 
