# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    team nil
    player nil
    location "MyString"
    date_of_game "2014-09-15 10:24:55"
  end
end
