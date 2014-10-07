# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photograph do
    album nil
    title "MyString"
    description "MyText"
    asset_url "MyString"
    created_at "2014-10-07 01:04:04"
    updated_on "2014-10-07 01:04:04"
    user nil
  end
end
