FactoryGirl.define do
  factory :user do
    name "Simon Howey"
    email "simon.howey@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end