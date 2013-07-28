require 'faker'

FactoryGirl.define do
  factory :list do |l|
    l.title { Faker::Lorem.characters(char_count = 255)}
  end

  factory :invalid_list, parent: :list do |l| 
    l.title nil 
  end
end
