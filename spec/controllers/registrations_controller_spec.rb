require 'spec_helper'

describe RegistrationsController do

  #Delete this example and add some real ones
  it "should use RegistrationsController" do
    controller.should be_an_instance_of(RegistrationsController)
  end

  it "should render the index page" do
    get :index
    response.should have_text(/Rails Bootcamp/)
  end

  it "should render the new registration page" do
    get :new
    response.should have_text(/Register/)
  end

  it "should create a new registration on create" do
    Registration.should_receive(:save)
    post :create, {:registration => {:name => "Bob", :email => "bob@bob.com"}}
  end

end
