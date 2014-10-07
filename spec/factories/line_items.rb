# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :line_item do
    photograph nil
    price_cents 1
    cart nil
    user nil
    state "MyText"
  end
end
