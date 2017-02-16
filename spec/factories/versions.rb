FactoryGirl.define do
  factory :version do
    title "MyString"
    body "MyText"
    active false
    association :note
  end
end
