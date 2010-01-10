require 'spec_helper'

describe EventsController do

  #Delete this example and add some real ones
  it "should use EventsController" do
    controller.should be_an_instance_of(EventsController)
  end

  it "should render the event homepage" do
    Event.create(:name => "Rails woot!")
    get :index
    response.should have_text(/Rails woot!/)
  end

end
