require 'spec_helper'

describe ListsController do

  describe "#index" do
  
    it "responds successfully" do
      get :index
      response.should be_success
    end

    it "assigns all lists to page" do
      List.should_receive(:all).and_return("foo")
      get :index
      assigns(:lists).should == "foo"
    end

    it "assigns a new list object for the create form" do
      List.should_receive(:new).and_return("foo")
      get :index
      assigns(:list).should == "foo"
    end

  end

  describe "#create" do

    context "with valid attributes" do

      it "saves the new list to the database" do
        expect{ 
          post :create, list: FactoryGirl.attributes_for(:list) 
        }.to change(List,:count).by(1) 
      end

      it "redirects to the lists index" do
        post :create, list: FactoryGirl.attributes_for(:list) 
        response.should redirect_to lists_path
      end

      it "shows a flash success message" do
        post :create, list: FactoryGirl.attributes_for(:list) 
        flash[:notice].should eql("The new list was created")
      end

    end

    context "with invalid attributes" do

      it "does not save a new list to the database" do
        expect{ 
          post :create, list: FactoryGirl.attributes_for(:invalid_list) 
        }.to_not change(List,:count)
      end

      it "redirects to the lists index" do
        post :create, list: FactoryGirl.attributes_for(:invalid_list) 
        response.should redirect_to lists_path
      end

      it "shows a flash error message" do
        post :create, list: FactoryGirl.attributes_for(:invalid_list) 
        flash[:alert].should eql("The new list was not created")
      end

    end

  end

end