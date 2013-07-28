require 'spec_helper'

describe List do
  
  it "is invalid without a title" do
  	FactoryGirl.build(:list, title: nil).should_not be_valid
  end

  it "is invalid with a title over 255 characters" do
  	FactoryGirl.build(:list, title: Faker::Lorem.characters(char_count = 256)).should_not be_valid
  end

end