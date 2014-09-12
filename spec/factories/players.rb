# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    first_name "MyString"
    last_name "MyString"
    number "MyString"
    position "MyString"
    team_id 1
    fg_attempts 1
    fg_makes 1
    fg_percent 1
    assists 1
    reb_total 1
    reb_def 1
    reb_off 1
    steals 1
    blocks 1
  end
end
