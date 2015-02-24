FactoryGirl.define do
  factory :user do |p|
  p.name 'John'
  p.sequence(:email) { |n| "player#{n}@odot.com"}
    p.password 'password'
    p.password_confirmation 'password'
  end
end