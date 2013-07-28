require 'spec_helper'

describe "lists/index" do

  let(:list1) { FactoryGirl.create(:list) }
  let(:list2) { FactoryGirl.create(:list) }
  let(:list3) { FactoryGirl.create(:list) }

  before do
    assign(:list, List.new)
    assign(:lists, [list1, list2, list3])
    render
  end

  it "renders lists section" do
    rendered.should have_css("#lists")
  end

  it "renders each list" do
    rendered.should have_css("#lists .list.row", count: 3)
  end

end