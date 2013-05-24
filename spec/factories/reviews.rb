# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    proposal_id 1
    user_id 1
    comment "MyText"
    status "MyString"
  end
end
