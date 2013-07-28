require 'faker'

FactoryGirl.define do
  factory :item do |i|

    i.title { Faker::Lorem.characters(char_count = 255)}

  end
end
