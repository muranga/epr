# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    user_id 1
    project_id 1
    title "MyString"
    abstract "MyText"
    file "MyString"
    status "MyString"
  end
end
