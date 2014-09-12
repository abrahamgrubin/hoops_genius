# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :team do
    id ""
    name ""
    fg_attempts ""
    fg_makes ""
    fg_percent ""
    assists ""
    reb_total ""
    reb_def ""
    reb_off ""
    steals ""
    blocks 1
  end
end
