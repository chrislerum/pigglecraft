FactoryGirl.define do
  factory :user do
    email 'user@gmail.com'
    password 'urururyt'
    factory :forem_admin do
      forem_admin true
    end
  end
end
