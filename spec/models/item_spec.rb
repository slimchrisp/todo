require 'spec_helper'
require 'faker'

describe Item do

  it "is invalid without a title" do
  	FactoryGirl.build(:item, title: nil).should_not be_valid
  end

  it "is invalid with a title over 255 characters" do
  	FactoryGirl.build(:item, title: Faker::Lorem.characters(char_count = 256)).should_not be_valid
  end

end