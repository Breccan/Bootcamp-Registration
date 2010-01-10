require 'spec_helper'

describe RegistrationsController do

  #Delete this example and add some real ones
  it "should use RegistrationsController" do
    controller.should be_an_instance_of(RegistrationsController)
  end

  it "should render the index page" do
    get :index
  end

  it "should render the new registration page" do
    get :new
  end

  it "should create a new registration on create" do
    registration = Registration.new(:name => "Bob", :email => "bob@bob.com")
    Registration.should_receive(:new).and_return(registration)
    registration.should_receive(:save)
    post :create, {:registration => {:name => "Bob", :email => "bob@bob.com"}}
  end

end
