FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "lina_bina_#{n}@littlebutt.com" }
    sequence(:password) { |n| "cuddletime#{n}" }
    factory :admin do
      admin true
    end
  end
end
