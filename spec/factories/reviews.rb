FactoryGirl.define do
  factory :review do
    comment "MyText"
    rating 1.5
    user nil
    course nil
  end
end
