FactoryGirl.define do
  factory :user do
    name                   "Krishna Balan"
    email                  "kbalan@canprint.com.au"
    password               "foobar"
    password_confirmation  "foobar"
  end

  sequence :email do |n|
    "person-#{n}@example.com"
  end
end
