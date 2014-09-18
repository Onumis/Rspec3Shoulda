# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :session do
    start_time "2014-04-28 03:20:00 "
    association :network
  end
end
