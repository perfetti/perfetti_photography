# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    body "MyText"
    user nil
    updated_on "2014-10-07 01:03:57"
    created_on "2014-10-07 01:03:57"
    published false
    publishable false
  end
end
