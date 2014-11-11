FactoryGirl.define do
  factory :user do
    email 'user@gmail.com'
    password 'urururyt'

  end

  factory :admin_user do
    password 'urururyt'
    email 'admin@gmail.com'

  end
end
