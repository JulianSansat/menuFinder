FactoryGirl.define do
  factory :establishment do
    name {('a'..'z').to_a.shuffle.join}
    adress "MyString"
    kind "MyString"
    telephone "MyString"
    delivery false
    description "MyText"
  end
end
