FactoryBot.define do
  factory :donation_center do
    type { "" }
    name { "Supply center" }
    lat { 10 }
    long { 10 }

    trait :pharmacy do
      type { 'Pharmacy' }
    end

    trait :general do
      type { 'GeneralSupply' }
    end
  end
end
